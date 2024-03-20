import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ภาษาอังกฤษบทที่1 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Eng01(),
    );
  }
}

class Eng01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ภาษาอังกฤษ บทที่1 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ในภาษาอังกฤษมี tense ช่วงปัจจุบันที่ใช้เพื่ออธิบายเหตุการณ์หรือสถานการณ์ที่เกิดขึ้นในปัจจุบัน โดยมีรูปแบบหลัก ๆ 4 รูปแบบดังนี้\n\n'
                  '1. Present Simple (ปัจจุบันกาลธรรมดา): ใช้เพื่ออธิบายเหตุการณ์ที่เป็นประจำหรือเป็นธรรมดา รวมถึงเรื่องความจริงที่เป็นที่รู้จัก\n\n'
                  '2. Present Continuous (ปัจจุบันกาลกำลังเกิดขึ้น): ใช้เพื่ออธิบายเหตุการณ์ที่กำลังเกิดขึ้นในขณะนี้ หรือเหตุการณ์ที่กำลังเป็นกระบวนการอยู่\n\n'
                  '3. Present Perfect (ปัจจุบันกาลเสร็จสมบูรณ์): ใช้เพื่ออธิบายเหตุการณ์ที่เกิดขึ้นในอดีตและมีผลต่อปัจจุบัน หรือเหตุการณ์ที่เกิดขึ้นแต่ไม่ระบุเวลาเฉพาะ\n\n'
                  '4. Present Perfect Continuous (ปัจจุบันกาลเสร็จสมบูรณ์แบบต่อเนื่อง): ใช้เพื่ออธิบายเหตุการณ์ที่เริ่มต้นในอดีตและยังคงเป็นจริงในปัจจุบัน หรือเป็นกระบวนการที่เริ่มต้นในอดีตและยังคงดำเนินการอยู่\n\n'
                  'การใช้แต่ละรูปแบบของปัจจุบันจะขึ้นอยู่กับลักษณะของเหตุการณ์หรือสถานการณ์ที่ต้องการอธิบาย ดังนั้นการทราบลักษณะและการใช้งานของแต่ละรูปแบบจะช่วยให้การสื่อสารเป็นไปอย่างชัดเจนและถูกต้องมากยิ่งขึ้น\n\n',
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
