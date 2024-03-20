import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาคณิตศาสตร์บทที่ 1 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumM01(),
    );
  }
}

class SumM01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา คณิตศาสตร์ บทที่ 1 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'เซตคือกลุ่มของวัตถุหรือสมาชิกที่มีลักษณะเฉพาะบางอย่าง\n\n'
                  'แสดงเซตโดยใช้ {} และระบุสมาชิกด้วย • \n\n'
                  'ตัวอย่างเช่น:\n\n'
                  '   เซตของจำนวนเต็มบวกน้อยกว่าหรือเท่ากับ 5 = {1, 2, 3, 4, 5}\n\n'
                  '   เซตของตัวเลขคู่ = {2, 4, 6, 8, ...}\n\n'
                  '   เซตของตัวอักษรใน "apple" = {a, p, l, e}\n\n'
                  '   เซตว่าง = {}\n\n'
                  'ประเภทของเซต\n\n'
                  '   เซตย่อย: เซตที่มีสมาชิกทั้งหมดอยู่ในเซตอื่น\n\n'
                  '   เซตสมบูรณ์: เซตที่รวมเซตทั้งหมดที่เรากำหนด\n\n'
                  '   เซตเดียวกัน: เซตที่มีสมาชิกเหมือนกัน\n\n'
                  '   เซตว่าง: เซตที่ไม่มีสมาชิก\n\n'
                  '   เซตไจ้กัน: เซตที่ไม่มีสมาชิกร่วมกัน\n\n'
                  'การดำเนินการกับเซต\n\n'
                  '   สมาชิกทั้งหมด (Union): รวมสมาชิกทั้งหมดของเซตทั้งสอง\n\n'
                  '   สมาชิกที่ซ้ำกัน (Intersection): เลือกเฉพาะสมาชิกที่มีอยู่ในทั้งสองเซต\n\n'
                  '   สมาชิกที่ไม่ซ้ำกัน (Difference): เลือกสมาชิกที่มีอยู่ในเซตหนึ่งแต่ไม่มีในเซตอีกตัว\n\n'
                  '   เซตผลลัพธ์ (Complement): สมาชิกที่ไม่อยู่ในเซตที่กำหนด\n\n',
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
