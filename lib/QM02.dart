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
      home: QM02(),
    );
  }
}

class QM02 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QM02> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0; // เพิ่มตัวแปรเก็บคะแนน

  List<Map<String, dynamic>> questions = [
    {
      "question": "1.ให้ p แทน วันนี้เป็นวันหยุด และ q แทน ฉันจะไปเที่ยวทะเล ถ้าวันนี้ไม่เป็นวันหยุด คำถาม ฉันจะไปเที่ยวทะเลหรือไม่? เป็นจริงหรือเท็จ?",
      "options": [" จริง ", " เท็จ ", " ไม่สามารถระบุได้ ", " ขึ้นอยู่กับเงื่อนไขอื่นๆ "],
      "correctAnswer": 0
    },
    {
      "question": "2.ให้ p แทน วันนี้มีฝนตก และ q แทน ฉันจะออกไปวิ่งเช้า ถ้าวันนี้ไม่มีฝนตก คำถาม ฉันจะออกไปวิ่งเช้าหรือไม่? เป็นจริงหรือเท็จ?",
      "options": [" จริง ", " เท็จ ", " ไม่สามารถระบุได้ ", " ขึ้นอยู่กับเงื่อนไขอื่นๆ "],
      "correctAnswer": 0
    },
    {
      "question": "3.ให้ p แทน ฉันชอบวิทยาศาสตร์ และ q แทน ฉันชอบคณิตศาสตร์ ถ้าฉันไม่ชอบวิทยาศาสตร์ คำถาม ฉันชอบคณิตศาสตร์หรือไม่? เป็นจริงหรือเท็จ?",
      "options": [" จริง ", " เท็จ ", " ไม่สามารถระบุได้ ", " ขึ้นอยู่กับเงื่อนไขอื่นๆ "],
      "correctAnswer": 1
    },
    {
      "question": "4.ให้ p แทน ฉันมีเวลา และ q แทน ฉันจะเขียนเรียบร้อย ถ้าฉันไม่มีเวลา คำถาม ฉันจะเขียนเรียบร้อยหรือไม่? เป็นจริงหรือเท็จ?",
      "options": [" จริง ", " เท็จ ", " ไม่สามารถระบุได้ ", " ขึ้นอยู่กับเงื่อนไขอื่นๆ "],
      "correctAnswer": 1
    },
    {
      "question": "5.ให้ p แทน ฉันอยู่ในห้องสมุด และ q แทน ฉันกำลังอ่านหนังสือ ถ้าฉันไม่อยู่ในห้องสมุด คำถาม ฉันกำลังอ่านหนังสือหรือไม่? เป็นจริงหรือเท็จ",
      "options": [" จริง ", " เท็จ ", " ไม่สามารถระบุได้ ", " ขึ้นอยู่กับเงื่อนไขอื่นๆ "],
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