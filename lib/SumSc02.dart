import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาวิทยาศาสตร์บทที่ 2 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumSc02(),
    );
  }
}

class SumSc02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา วิทยาศาสตร์ บทที่ 2 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' โครงสร้างพื้นฐานของอะตอม\n\n'
                  '   อะตอมประกอบด้วยนิวเคลียสและอิเล็กตรอน\n\n'
                  '   นิวเคลียส: ประกอบด้วยโปรตอนและนิวตรอน\n\n'
                  '     โปรตอน: ประจุบวก\n\n'
                  '     นิวตรอน: ประจุลบ\n\n'
                  '   อิเล็กตรอน: ประจุลบ เคลื่อนที่รอบนิวเคลียส\n\n',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
