import 'package:flutter/material.dart';

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
  String _selectedLevel = 'มัธยมต้น';
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
                // โค้ดที่ต้องการให้ทำเมื่อปุ่ม "User" ถูกกด
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
                // โค้ดที่ต้องการให้ทำเมื่อปุ่ม "วิชาที่เข้าดูล่าสุด" ถูกกด
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
                // โค้ดที่ต้องการให้ทำเมื่อปุ่ม "เอกสาร" ถูกกด
              },
              child: Text('เอกสาร'),
            ),
            ElevatedButton(
              onPressed: () {
                // โค้ดที่ต้องการให้ทำเมื่อปุ่ม "แบบฝึกหัด" ถูกกด
              },
              child: Text('แบบฝึกหัด'),
            ),
            ElevatedButton(
              onPressed: () {
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