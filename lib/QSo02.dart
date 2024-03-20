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
      home: QSo02(),
    );
  }
}

class QSo02 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QSo02> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0; // เพิ่มตัวแปรเก็บคะแนน

  List<Map<String, dynamic>> questions = [
    {
      "question": "1.ลักษณะภูมิประเทศใดต่อไปนี้ พบมากที่สุดในภาคตะวันออกเฉียงเหนือของประเทศไทย?",
      "options": [" ที่ราบสูง ", " เทือกเขาสูง ", " ที่ราบลุ่มแม่น้ำ ", " ชายฝั่งทะเลยาว "],
      "correctAnswer": 0
    },
    {
      "question": "2.ลักษณะภูมิอากาศแบบใดต่อไปนี้ พบมากที่สุดในภาคใต้ของประเทศไทย?",
      "options": [" ภูมิอากาศร้อนชื้นแบบมรสุม ", " ภูมิอากาศร้อนชื้นแบบฝนตกตลอดปี ", " ภูมิอากาศร้อนแล้ง ", " ภูมิอากาศกึ่งร้อนกึ่งแห้ง "],
      "correctAnswer": 1
    },
    {
      "question": "3.แม่น้ำสายใดต่อไปนี้ ไหลผ่านภาคกลางของประเทศไทย?",
      "options": [" แม่น้ำเจ้าพระยา ", " แม่น้ำโขง ", " แม่น้ำแม่กลอง ", " แม่น้ำตาปี "],
      "correctAnswer": 0
    },
    {
      "question": "4.ภูเขาไฟที่สูงที่สุดในประเทศไทยคือ?",
      "options": [" ภูเขาไฟดับ ดอยอินทนนท์ ", " ภูเขาไฟดับ ภูหลวง ", " ภูเขาไฟดับ ภูเขียว ", " ภูเขาไฟระเบิด ภูเขาทะเล "],
      "correctAnswer": 0
    },
    {
      "question": "5.ทะเลสาบน้ำกร่อยที่ใหญ่ที่สุดในประเทศไทยคือ?",
      "options": [" ทะเลสาบสงขลา ", " ทะเลสาบเขื่อนเชี่ยวหลาน ", " ทะเลสาบเขื่อนแก่งกระจาน ", " ทะเลสาบเขื่อนรัชชประภา "],
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