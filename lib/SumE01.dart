import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาภาษาอังกฤษบทที่1 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumE01(),
    );
  }
}

class SumE01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา ภาษาอังกฤษ บทที่1 มัธยมปลาย'),
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
                  '1. Present Simple (ปัจจุบันกาลธรรมดา)\n\n'
                  '2. Present Continuous (ปัจจุบันกาลกำลังเกิดขึ้น)\n\n'
                  '3. Present Perfect (ปัจจุบันกาลเสร็จสมบูรณ์)\n\n'
                  '4. Present Perfect Continuous (ปัจจุบันกาลเสร็จสมบูรณ์แบบต่อเนื่อง)\n\n',
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
