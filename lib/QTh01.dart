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
      home: QTh01(),
    );
  }
}

class QTh01 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QTh01> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0; // เพิ่มตัวแปรเก็บคะแนน

  List<Map<String, dynamic>> questions = [
    {
      "question": "1.ภาษาใดต่อไปนี้ไม่ใช่ภาษาในตระกูลภาษาไท-กะได?",
      "options": [" ภาษาไทย ", " ภาษาจีน ", " ภาษาเขมร ", "  ภาษาลาว "],
      "correctAnswer": 1
    },
    {
      "question": "2.ภาษาไทยมีกี่วรรณยุกต์?",
      "options": [" 2 วรรณยุกต์ ", " 4 วรรณยุกต์ ", " 5 วรรณยุกต์ ", "  6 วรรณยุกต์ "],
      "correctAnswer": 2
    },
    {
      "question": "3.องค์ประกอบใดต่อไปนี้ไม่ใช่ส่วนประกอบของภาษา?",
      "options": [" เสียง ", " ตัวอักษร ", " ความหมาย ", " รูปแบบ "],
      "correctAnswer": 1
    },
    {
      "question": "4. ภาษาใดต่อไปนี้ไม่ใช่ภาษาประจำชาติของประเทศไทย?",
      "options": [" ภาษาไทย ", " ภาษาจีน ", " ภาษาเขมร ", "  ภาษาลาว "],
      "correctAnswer": 1
    },
    {
      "question": "5.ลักษณะใดต่อไปนี้ไม่ใช่ลักษณะของภาษา?",
      "options": [" ภาษาเป็นระบบสัญลักษณ์ ", " ภาษาเปลี่ยนแปลงอยู่เสมอ ", " ภาษามีพลัง ", " ภาษาเป็นเครื่องมือสื่อสาร "],
      "correctAnswer": 3
    }
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