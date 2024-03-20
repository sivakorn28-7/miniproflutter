import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาวิทยาศาสตร์บทที่ 3 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumSc03(),
    );
  }
}

class SumSc03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา วิทยาศาสตร์ บทที่ 3 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'เซลล์ของสิ่งมีชีวิต\n\n'
                  '1. โครงสร้างของเซลล์\n\n'
                  '   1.1 เซลล์เนื้อเยื่อ (พลาสมา): ส่วนประกอบสำคัญของเซลล์\n\n'
                  '   1.2 เซลล์อินทรีย์ (โปรคารีโอติก): ส่วนประกอบภายในเซลล์\n\n'
                  '2. ประเภทของเซลล์\n\n'
                  '   2.1 เซลล์ประสาท: สื่อสาร\n\n'
                  '   2.2 เซลล์กล้ามเนื้อ: เคลื่อนไหว\n\n'
                  '   2.3 ยังมีเซลล์ประเภทอื่นๆ อีกมากมาย\n\n'
                  '3. การสร้างเซลล์ใหม่\n\n'
                  '   3.1 เซลล์แบ่งตัวเป็นสองเซลล์ลูก\n\n'
                  '   3.2 จำนวนเซลล์เพิ่มขึ้น\n\n'
                  '   3.3 ช่วยในการเจริญเติบโต\n\n',
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
