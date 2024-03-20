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
      home: QSo01(),
    );
  }
}

class QSo01 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QSo01> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0; // เพิ่มตัวแปรเก็บคะแนน

  List<Map<String, dynamic>> questions = [
    {
      "question": "1.อะไรคือปัจจัยหลักที่ส่งผลต่ออุปสงค์ของสินค้า?",
      "options": [" ต้นทุนการผลิตสินค้า ", " รายได้ของผู้บริโภค ", " ราคาสินค้า ", " เทคโนโลยีการผลิต "],
      "correctAnswer": 1
    },
    {
      "question": "2.เมื่อราคาสินค้าสูงขึ้น อะไรจะเกิดขึ้นกับอุปสงค์ของสินค้า?",
      "options": [" อุปสงค์จะเพิ่มขึ้น ", " อุปสงค์จะคงที่ ", " อุปสงค์จะลดลง ", " อุปสงค์จะผันผวน "],
      "correctAnswer": 2
    },
    {
      "question": "3.อะไรคือปัจจัยหลักที่ส่งผลต่ออุปทานของสินค้า?",
      "options": [" รสนิยมของผู้บริโภค ", " เทคโนโลยีการผลิต ", " ราคาสินค้า ", " นโยบายของรัฐบาล "],
      "correctAnswer": 1
    },
    {
      "question": "4.เมื่อราคาสินค้าสูงขึ้น อะไรจะเกิดขึ้นกับอุปทานของสินค้า?",
      "options": [" อุปสงค์จะเพิ่มขึ้น ", " อุปสงค์จะคงที่ ", " อุปสงค์จะลดลง ", " อุปสงค์จะผันผวน "],
      "correctAnswer": 0
    },
    {
      "question": "5.จุดสมดุลในตลาดเกิดขึ้นเมื่อใด?",
      "options": [" เมื่ออุปสงค์และอุปทานของสินค้าเท่ากัน ", " เมื่ออุปสงค์ของสินค้ามากกว่าอุปทาน ", " เมื่ออุปทานของสินค้ามากกว่าอุปสงค์ ", " เมื่อราคาสินค้าสูงที่สุด "],
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