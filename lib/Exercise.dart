import 'package:flutter/material.dart';
import 'package:minipro/Edit.dart';
import 'package:minipro/QE01.dart';
import 'package:minipro/QE02.dart';
import 'package:minipro/QE03.dart';
import 'package:minipro/QM01.dart';
import 'package:minipro/QM02.dart';
import 'package:minipro/QM03.dart';
import 'package:minipro/QSc01.dart';
import 'package:minipro/QSc02.dart';
import 'package:minipro/QSc03.dart';
import 'package:minipro/QSo01.dart';
import 'package:minipro/QSo02.dart';
import 'package:minipro/QSo03.dart';
import 'package:minipro/QTh01.dart';
import 'package:minipro/QTh02.dart';
import 'package:minipro/QTh03.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Exercise(),
    );
  }
}

class Exercise extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Exercise> {
  String _selectedLevel = 'มัธยมปลาย';
  String _selectedSubject = 'วิทยาศาสตร์';

  List<String> _levels = ['มัธยมต้น', 'มัธยมปลาย'];
  List<String> _subjects = ['วิทยาศาสตร์', 'คณิตศาสตร์', 'อังกฤษ', 'สังคม', 'ภาษาไทย'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise'),
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
                      MaterialPageRoute(builder: (context) =>QSc01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QM01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QE01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QSo01()),
                      );
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QTh01()),
                      );
                    }
                },
                  child: Text('แบบฝึกหัดบทที่ 1'),
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
                      MaterialPageRoute(builder: (context) =>QSc02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QM02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QE02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QSo02()),
                      );
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QTh02()),
                      );
                    }
                },
                  child: Text('แบบฝึกหัดบทที่ 2'),
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
                      MaterialPageRoute(builder: (context) =>QSc03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QM03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QE03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QSo03()),
                      );
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>QTh03()),
                      );
                    }
                },
                  child: Text('แบบฝึกหัดบทที่ 3'),
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
