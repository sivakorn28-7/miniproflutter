import 'package:flutter/material.dart';
import 'package:minipro/Edit.dart';
import 'package:minipro/Eng01.dart';
import 'package:minipro/Eng02.dart';
import 'package:minipro/Eng03.dart';
import 'package:minipro/Math01.dart';
import 'package:minipro/Math02.dart';
import 'package:minipro/Math03.dart';
import 'package:minipro/Sci01.dart';
import 'package:minipro/Sci02.dart';
import 'package:minipro/Sci03.dart';
import 'package:minipro/Social01.dart';
import 'package:minipro/Social02.dart';
import 'package:minipro/Social03.dart';
import 'package:minipro/Thai01.dart';
import 'package:minipro/Thai02.dart';
import 'package:minipro/Thai03.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Lesson(),
    );
  }
}

class Lesson extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Lesson> {
  String _selectedLevel = 'มัธยมปลาย';
  String _selectedSubject = 'วิทยาศาสตร์';

  List<String> _levels = ['มัธยมต้น', 'มัธยมปลาย'];
  List<String> _subjects = ['วิทยาศาสตร์', 'คณิตศาสตร์', 'อังกฤษ', 'สังคม', 'ภาษาไทย'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson'),
        actions: [
          SizedBox(width: 20), // เพิ่มระยะห่างระหว่างปุ่ม
          IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 40, // กำหนดขนาดไอคอน
            onPressed: () {
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => Edit()), // เปลี่ยนเป็น MyApp() หรือหน้าหลักของแอพพลิเคชันของคุณ
                  );
            },
          ),
        ],
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

            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  value: _selectedLevel,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedLevel = newValue!;
                    });
                  },
                  items: _levels.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  value: _selectedSubject,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedSubject = newValue!;
                    });
                  },
                  items: _subjects.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            // ปุ่ม "บทเรียนที่ 1-5" อยู่คนละบรรทัด
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Thai01()),
                      );
                    }
                },
                  child: Text('บทเรียนที่ 1'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50), // กำหนดขนาดปุ่ม
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'วิทยาศาสตร์') {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Sci02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Math02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Eng02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Social02()),
                      );
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Thai02()),
                      );
                    }
                },
                  child: Text('บทเรียนที่ 2'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50), // กำหนดขนาดปุ่ม
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                 onPressed: () {
                    if (_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'วิทยาศาสตร์') {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Sci03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Math03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Eng03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Social03()),
                      );
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>Thai03()),
                      );
                    }
                },
                  child: Text('บทเรียนที่ 3'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50), // กำหนดขนาดปุ่ม
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
