import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ภาษาไทยบทที่1 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Thai01(),
    );
  }
}

class Thai01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ภาษาไทย บทที่1 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ธรรมชาติและลักษณะของภาษา\n\n'
                  '1. ความหมายของภาษา\n\n'
                  ' ภาษาที่เป็นถ้อยคำ คือ ภาษาที่ใช้พูดหรืออ่านผ่านตัวหนังสือ (วัจนภาษา) ส่วนภาษาที่ไม่ใช่ถ้อยคำ คือ ภาษาที่ไม่ต้องใช้เสียงพูดหรือตัวอักษร แต่สามารถเข้าใจได้ตรงกัน (อวัจนภาษา)\n\n'
                  '2. ธรรมชาติของภาษา\n\n'
                  '   - ภาษาใช้เสียงสื่อความหมาย\n\n'
                  '   - ภาษาประกอบด้วยหน่วยเล็กซึ่งประกอบกันเป็นหน่วยใหญ่ขึ้น\n\n'
                  '   - ภาษามีการเปลี่ยนแปลง\n\n'
                  '   - ภาษามีลักษณะเฉพาะที่ต่างและเหมือนกัน\n\n'
                  '3. ลักษณะของภาษาไทย\n\n'
                  '   - เป็นภาษาคำโดดพยางค์เดียว\n\n'
                  '   - มีพยัญชนะของตนเอง\n\n'
                  '   - มีเสียงวรรณยุกต์\n\n'
                  '   - มีคำลักษณนาม คำพ้องรูป คำพ้องเสียง\n\n'
                  '   - มีระดับของภาษา\n\n'
                  '   - คำราชาศัพท์\n\n'
                  '   - มีโครงสร้างประโยคแบบเรียงคำ\n\n',
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
