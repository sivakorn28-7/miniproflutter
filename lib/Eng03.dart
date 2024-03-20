import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ภาษาอังกฤษบทที่3 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Eng03(),
    );
  }
}

class Eng03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ภาษาอังกฤษ บทที่3 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. ใคร (Who): ใช้ถามเกี่ยวกับคนหรือบุคคล\n\n'
                  '2. อะไร (What): ใช้ถามเกี่ยวกับสิ่งของ การกระทำ หรือความคิด\n\n'
                  '3. เมื่อไหร่ (When): ใช้ถามเกี่ยวกับเวลาหรือระยะเวลา\n\n'
                  '4. ที่ไหน (Where): ใช้ถามเกี่ยวกับสถานที่หรือตำแหน่ง\n\n'
                  '5. ทำไม (Why): ใช้ถามเกี่ยวกับเหตุผลหรือวัตถุประสงค์\n\n'
                  '6. อย่างไร (How): ใช้ถามเกี่ยวกับวิธีหรือลักษณะการกระทำ\n\n'
                  '7. ใด (Which): ใช้ถามเกี่ยวกับตัวเลือกหรือความชอบ\n\n'
                  '8. ของใคร (Whose): ใช้ถามเกี่ยวกับความเป็นเจ้าของหรือการครอบครอง\n\n'
                  'คำถามเหล่านี้เป็นสิ่งสำคัญในการสร้างประโยคถามในภาษาอังกฤษ มันช่วยให้ได้ข้อมูลที่เฉพาะเจาะจงและทำให้การสื่อสารเป็นไปอย่างชัดเจนมากยิ่งขึ้น\n\n',
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
