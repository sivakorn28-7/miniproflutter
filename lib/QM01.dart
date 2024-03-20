import 'package:flutter/material.dart';
import 'package:minipro/main.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      home: QM01(),
    );
  }
}

class QM01 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QM01> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0; // เพิ่มตัวแปรเก็บคะแนน

  List<Map<String, dynamic>> questions = [
    {
      "question": "1.เซต A = {1, 2, 3, 4, 5} และเซต B = {3, 4, 5, 6, 7} ค่าต่างๆ ของการดำเนินการ A ∪ B คือ?",
      "options": [" {1, 2, 3, 4, 5, 6, 7} ", " {3, 4, 5} ", " {1, 2, 6, 7} ", " {1, 2, 3, 4, 5} "],
      "correctAnswer": 0
    },
    {
      "question": "2.ให้ A = {1, 2, 3, 4} และ B = {3, 4, 5, 6} ค่าต่างๆ ของการดำเนินการ A ∩ B คือ?",
      "options": [" {3, 4} ", " {1, 2, 5, 6} ", "  {1, 2, 3, 4, 5, 6} ", " {} "],
      "correctAnswer": 0
    },
    {
      "question": "3.ถ้า A = {1, 2, 3, 4, 5} และ B = {4, 5, 6, 7, 8} ค่าต่างๆ ของการดำเนินการ A - B คือ?",
      "options": [" {1, 2, 3, 4, 5} ", " {6, 7, 8} ", " {4, 5} ", " {} "],
      "correctAnswer": 1
    },
    {
      "question": "4.ให้ U เป็นเซต universe ที่มีค่าสมาชิกเป็นจำนวนเต็มบวกทุกจำนวน ถ้า A = {2, 4, 6, 8, 10} และ B = {3, 6, 9, 12} ค่าต่างๆ ของการดำเนินการ A ∩ B' คือ?",
      "options": [" {2, 4, 6, 8, 10} ", " {2, 4, 8, 10} ", " {3, 6, 9, 12} ", " {} "],
      "correctAnswer": 1
    },
    {
      "question": "5.ถ้า A = {x | x เป็นจำนวนเต็มบวกที่น้อยกว่า 6} และ B = {x | x เป็นจำนวนเต็มบวกที่น้อยกว่า 4} ค่าต่างๆ ของการดำเนินการ A ∪ B คือ?",
      "options": ["  {1, 2, 3, 4, 5} ", " {1, 2, 3, 4, 5, 6} ", " {1, 2, 3} ", " {4, 5, 6} "],
      "correctAnswer": 0
    },
    // เพิ่มคำถามต่อไปตามต้องการ
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Text(
      questions[currentQuestionIndex]["question"],
      style: TextStyle(fontSize: 20.0),
    ),
    SizedBox(height: 20.0),
    ...(questions[currentQuestionIndex]["options"] as List<String>).map((option) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: OutlinedButton(
          onPressed: () {
            checkAnswer(option);
          },
          style: ButtonStyle(
            side: MaterialStateProperty.resolveWith<BorderSide>(
              (Set<MaterialState> states) {
                return BorderSide(
                  color: states.contains(MaterialState.pressed) ? Colors.grey : Theme.of(context).primaryColor,
                  width: 2.0,
                );
              },
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(option),
          ),
        ),
      );
    }).toList(),
  ],
),

      ),
    );
  }

 void checkAnswer(String selectedOption) {
  int correctAnswerIndex = questions[currentQuestionIndex]["correctAnswer"];
  if (selectedOption == questions[currentQuestionIndex]["options"][correctAnswerIndex]) {
    setState(() {
      correctAnswers++; // เพิ่มคะแนนเมื่อตอบถูก
    });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Correct!'),
          content: Text('Your answer is correct.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                goToNextQuestion();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Incorrect!'),
          content: Text('Your answer is incorrect.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                goToNextQuestion(); // ไปยังคำถามถัดไปโดยไม่เพิ่มคะแนน
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}


  void goToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('End of Quiz'),
              content: Text('You have finished the quiz. Your score: $correctAnswers/5'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>LessonPage()),
                      );
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('End of Quiz'),
              content: Text('You have finished the quiz. Your score: $correctAnswers/5'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>LessonPage()),
                      );
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }
}