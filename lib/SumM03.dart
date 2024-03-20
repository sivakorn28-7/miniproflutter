import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาคณิตศาสตร์บทที่ 3 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumM03(),
    );
  }
}

class SumM03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา คณิตศาสตร์ บทที่ 3 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' หลักการนับเบื้องต้น\n\n'
                  '   หลักการตระกูล: สองเซตมีจำนวนสมาชิกเท่ากัน เมื่อจับคู่แต่ละสิ่งในเซตหนึ่งกับสิ่งในเซตอื่นได้โดยไม่มีสิ่งใดตกหล่น\n\n'
                  '   หลักการเรียงลำดับ: กำหนดลำดับหรือเรียงลำดับวัตถุ ช่วยให้การนับวัตถุที่มีลำดับได้อย่างชัดเจน\n\n'
                  '   หลักการเพิ่ม: นับจำนวนวัตถุที่มีส่วนร่วมหรือเพิ่มเติมกัน โดยการนับจำนวนของแต่ละส่วนแล้วรวมผลลัพธ์ทั้งหมด\n\n'
                  '   หลักการคูณ: นับจำนวนวัตถุที่มีความสัมพันธ์แบบกระจาย หรือทำงานร่วมกัน โดยการนับจำนวนของแต่ละส่วนแยกกัน แล้วนำผลคูณของจำนวนทั้งหมดมาเข้าด้วยกัน\n\n',
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
