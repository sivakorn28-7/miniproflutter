import 'package:flutter/material.dart';
import 'package:minipro/Edit.dart';
import 'package:minipro/SumE01.dart';
import 'package:minipro/SumE02.dart';
import 'package:minipro/SumE03.dart';
import 'package:minipro/SumM01.dart';
import 'package:minipro/SumM02.dart';
import 'package:minipro/SumM03.dart';
import 'package:minipro/SumSc01.dart';
import 'package:minipro/SumSc02.dart';
import 'package:minipro/SumSc03.dart';
import 'package:minipro/SumSo01.dart';
import 'package:minipro/SumSo02.dart';
import 'package:minipro/SumSo03.dart';
import 'package:minipro/SumTh01.dart';
import 'package:minipro/SumTh02.dart';
import 'package:minipro/SumTh03.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Summerize',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Summarize(),
    );
  }
}

class Summarize extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Summarize> {
  String _selectedLevel = 'มัธยมปลาย';
  String _selectedSubject = 'วิทยาศาสตร์';

  List<String> _levels = ['มัธยมต้น', 'มัธยมปลาย'];
  List<String> _subjects = ['วิทยาศาสตร์', 'คณิตศาสตร์', 'อังกฤษ', 'สังคม', 'ภาษาไทย'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summerize'),
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
                      MaterialPageRoute(builder: (context) =>SumSc01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumM01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumE01()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumSo01()),
                      );
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumTh01()),
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
                  child: Text('สรุปบทเรียนที่ 1'),
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
                      MaterialPageRoute(builder: (context) =>SumSc02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumM02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumE02()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumSo02()),
                      );
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumTh02()),
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
                  child: Text('สรุปบทเรียนที่ 2'),
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
                      MaterialPageRoute(builder: (context) =>SumSc03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'คณิตศาสตร์'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumM03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'อังกฤษ'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumE03()),
                      );
                    }else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'สังคม'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumSo03()),
                      );
                    }
                    else if(_selectedLevel == 'มัธยมปลาย' && _selectedSubject == 'ภาษาไทย'){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>SumTh03()),
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
                  child: Text('สรุปบทเรียนที่ 3'),
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
