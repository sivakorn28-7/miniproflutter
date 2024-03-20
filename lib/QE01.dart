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
      home: QE01(),
    );
  }
}

class QE01 extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QE01> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0; // เพิ่มตัวแปรเก็บคะแนน

  List<Map<String, dynamic>> questions = [
    {
      "question": "1.Which sentence describes a present-time action?",
      "options": ["  She will bake cookies tomorrow. ", " He swam in the pool yesterday. ", " They are playing soccer right now. ", " We walked to school last week. "],
      "correctAnswer": 2
    },
    {
      "question": "2.What is the present tense form of the verb to eat in the sentence: They ___ lunch every day?",
      "options": [" eats ", " eating ", " eat ", " ate "],
      "correctAnswer": 2
    },
    {
      "question": "3.Which sentence uses the present continuous tense?",
      "options": ["  She sings beautifully. ", " They will dance at the party. ", " We are watching a movie tonight. ", " He read a book yesterday. "],
      "correctAnswer": 2
    },
    {
      "question": "4.Choose the sentence that correctly uses the present perfect tense",
      "options": [" They went to the beach yesterday. ", " She has finished her homework already. ", " He will visit his grandparents next weekend. ", " We played soccer every Sunday. "],
      "correctAnswer": 1
    },
    {
      "question": "5.Which sentence indicates an action happening at the present moment",
      "options": [" I have visited London before. ", " They are going to the movies later. ", " He will call you back soon. ", " She is reading a book right now. "],
      "correctAnswer": 2
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