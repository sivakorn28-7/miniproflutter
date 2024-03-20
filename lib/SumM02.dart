import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาคณิตศาสตร์บทที่ 2 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumM02(),
    );
  }
}

class SumM02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา คณิตศาสตร์ บทที่ 2 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ประพจน์: ประโยคที่มีความหมาย ระบุว่าจริงหรือเท็จ\n\n'
                  '   การสร้างประพจน์: ใช้คำนาม คำกริยา หรือคำวิเศษ\n\n'
                  '   การนำเสนอประพจน์: เขียนและอ่านประพจน์ให้เข้าใจง่าย\n\n'
                  '   การแสดงประพจน์: ใช้สัญลักษณ์แทนประพจน์\n\n'
                  '   การเปรียบเทียบประพจน์: ใช้ตรรกะเปรียบเทียบหาความจริง\n\n'
                  '   การตรวจสอบประพจน์: ใช้ตรรกะหาความจริงของประพจน์\n\n'
                  '   การพิสูจน์: สร้างและอ่านบทพิสูจน์แสดงความจริงของประพจน์\n\n'
                  'สัญลักษณ์ตรรกศาสตร์\n\n'
                  '   ตัวอักษรเล็ก (p, q, r) แทนประพจน์\n\n'
                  '   ∧ (และ), ∨ (หรือ), ¬ (ไม่), → (ถ้า...แล้ว), ↔ (ก็ต่อเมื่อ) เชื่อมต่อ/วิเคราะห์ประพจน์\n\n',
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
