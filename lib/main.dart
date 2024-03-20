import 'package:flutter/material.dart';
import 'package:minipro/Edit.dart';
import 'package:minipro/Eng01.dart';
import 'package:minipro/Exercise.dart';
import 'package:minipro/Lesson.dart';
import 'package:minipro/Math01.dart';
import 'package:minipro/Sci01.dart';
import 'package:minipro/Social01.dart';
import 'package:minipro/Summarize.dart';
import 'package:minipro/Thai01.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson Selector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LessonPage(),
    );
  }
}

class LessonPage extends StatefulWidget {
  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  String _selectedLevel = 'มัธยมปลาย';
  String _selectedSubject = 'วิทยาศาสตร์';

  final List<String> _levels = ['มัธยมต้น', 'มัธยมปลาย'];
  final List<String> _subjects = ['วิทยาศาสตร์', 'คณิตศาสตร์', 'อังกฤษ', 'สังคม', 'ภาษาไทย'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text('Lesson Selector'),
            ),
            IconButton(
              icon: Icon(Icons.account_circle, size: 32), // กำหนดขนาดไอคอนให้ใหญ่ขึ้น
              onPressed: () {
                 Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => Edit()), // เปลี่ยนเป็น MyApp() หรือหน้าหลักของแอพพลิเคชันของคุณ
                  );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: _selectedLevel,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedLevel = newValue;
                  });
                }
              },
              items: _levels.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: _selectedSubject,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedSubject = newValue;
                  });
                }
              },
              items: _subjects.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                    if (_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'วิทยาศาสตร์') {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Sci01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Math01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Eng01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Social01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Thai01()),
                      );
                    }else if (_selectedLevel == 'มัธยมต้น') {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('แจ้งเตือน'),
                        content: Text('ยังไม่มีเนื้อหาที่เกี่ยวข้อง'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('ตกลง'),
                          ),
                        ],
                      );
                    },
                  );
                }

                },
              child: Text('วิชาที่เข้าดูล่าสุด')
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson()),
                );
              },
              child: Text('เอกสาร'),
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => Exercise()), // เปลี่ยนเป็น MyApp() หรือหน้าหลักของแอพพลิเคชันของคุณ
                  );
                // โค้ดที่ต้องการให้ทำเมื่อปุ่ม "เอกสาร" ถูกกด
                // โค้ดที่ต้องการให้ทำเมื่อปุ่ม "แบบฝึกหัด" ถูกกด
              },
              child: Text('แบบฝึกหัด'),
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => Summarize()), // เปลี่ยนเป็น MyApp() หรือหน้าหลักของแอพพลิเคชันของคุณ
                  );
                // โค้ดที่ต้องการให้ทำเมื่อปุ่ม "เอกสาร" ถูกกด
                // โค้ดที่ต้องการให้ทำเมื่อปุ่ม "สรุปบทเรียน" ถูกกด
              },
              child: Text('สรุปบทเรียน'),
            ),
          ],
        ),
      ),
    );
  }
}

