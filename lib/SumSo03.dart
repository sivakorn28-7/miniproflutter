import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาสังคมศึกษาบทที่3 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumSo03(),
    );
  }
}

class SumSo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา สังคมศึกษา บทที่3 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'โลกในศตวรรษที่ 21\n\n'
                  'โลกในศตวรรษที่ 21 เปลี่ยนโฉมหน้าของโลกจากยุคศตวรรษที่ 20 ไปอย่างสมบูรณ์ ปัจจุบันโลกเต็มไปด้วยปัญหาต่างๆ มากมาย\n\n'
                  '1. ปัญหาการก่อการร้าย\n\n'
                  '2. ปัญหาเศรษฐกิจ\n\n'
                  '3. ปัญหาสังคม\n\n',
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
