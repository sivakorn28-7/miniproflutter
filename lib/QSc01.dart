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
      home: QSc01(),
    );
  }
}

class QSc01 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QSc01> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0; // เพิ่มตัวแปรเก็บคะแนน

  List<Map<String, dynamic>> questions = [
    {
      "question": "1.ถ้ารถเคลื่อนที่ด้วยความเร็ว 60 กิโลเมตรต่อชั่วโมง เคลื่อนที่ไป 120 กิโลเมตรใช้เวลาเท่าไร?",
      "options": [" 1 ชั่วโมง ", " 2 ชั่วโมง ", " 3 ชั่วโมง ", " 4 ชั่วโมง "],
      "correctAnswer": 0
    },
    {
      "question": "2.ถ้ามีความเร็วเฉลี่ยของรถเป็น 80 กิโลเมตรต่อชั่วโมง และเคลื่อนที่ไป 160 กิโลเมตร ระยะเวลาทั้งหมดเป็นเท่าไร?",
      "options": [" 1 ชั่วโมง ", " 2 ชั่วโมง ", " 3 ชั่วโมง ", " 4 ชั่วโมง "],
      "correctAnswer": 1
    },
    {
      "question": "3.ถ้าเด็กคนหนึ่งเดินไปทางตะวันตกเป็นเวลา 30 นาที แล้วเดินกลับมาทางตะวันออกเหมือนเดิมใช้เวลาเท่าไร?",
      "options": [" 30 นาที ", " 45 นาที ", " 60 นาที ", " 90 นาที "],
      "correctAnswer": 0
    },
    {
      "question": "4.ถ้ามีระยะทางทั้งหมด 300 กิโลเมตร และรถเคลื่อนที่ด้วยความเร็วเฉลี่ย 60 กิโลเมตรต่อชั่วโมง ใช้เวลาเท่าไรในการเดินทาง",
      "options": [" 3 ชั่วโมง ", " 4 ชั่วโมง ", " 5 ชั่วโมง ", " 6 ชั่วโมง "],
      "correctAnswer": 2
    },
    {
      "question": "5.ถ้ามีระยะทาง 100 เมตร และความเร็วเฉลี่ย 20 เมตรต่อวินาที ใช้เวลาเท่าไรในการเดินทาง",
      "options": [" 2 วินาที ", " 3 วินาที ", " 4 วินาที ", " 5 วินาที "],
      "correctAnswer": 3
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