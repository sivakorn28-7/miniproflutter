import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาภาษาไทยบทที่3 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumTh03(),
    );
  }
}

class SumTh03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา ภาษาไทย บทที่3 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'การสื่อสารด้วยภาษาไทย\n\n'
                  '๑. การออกเสียงคำ\n\n'
                  '   ๑.๑ การออกเสียงพยัญชนะ เสียงพยัญชนะที่มีปัญหาในการออกเสียงแบ่งออกเป็น ๒ ประเภท คือ\n\n'
                  '   ๑.๒ การออกเสียงสระ\n\n'
                  '   ๑.๓ การออกเสียงวรรณยุกต์ เสียงวรรณยุกต์ของไทยทั้ง ๕ เสียง สามารถจัดเป็น ๒ กลุ่มใหญ่ ๆ คือ\n\n'
                  '๒. การลงเสียงหนักเบา\n\n'
                  '๓. การออกเสียงคำที่มาจากภาษาบาลีและสันสกฤต\n\n'
                  '   ๓.๑ การออกเสียงสระแต่ละพยางค์\n\n'
                  '   ๓.๒ การออกเสียงสระอะท้ายตัวสะกด\n\n'
                  '   ๓.๓ การออกเสียงพยางค์ท้ายคำ\n\n'
                  '   ๓.๔ การออกเสียงคำสมาส โดยเป็นคำภาษาบาลีและสันสกฤตตั้งแต่สองคำขึ้นไปที่นำมารวมกัน แล้วเกิดเป็นคำใหม่ที่มีความหมายเกี่ยวข้องกับคำเดิม มีหลักการออกเสียงดังนี้\n\n'
                  '   ๓.๕ การออกเสียงคำอย่างอักษรนำ\n\n'
                  '๔. การออกเสียงคำแผลง\n\n'
                  'เมื่อแผลงคำแล้วจะเกิดเป็นพยางค์ใหม่ หากคำเดิมเป็นอักษรควบหรืออักษรนำพยางค์หลังของคำใหม่ที่ได้จะออกเสียงวรรณยุกต์ตามคำเดิม\n\n'
                  'ถ้าคำเดิมไม่ใช่อักษรควบหรืออักษรนำ เมื่อแผลงแล้วพยางค์หลังของคำใหม่จะไม่ออกเสียงวรรณยุกต์ตามคำเดิม\n\n'
                  '๕. การสะกดคำ\n\n'
                  '   ๕.๑ การใช้พยัญชนะ\n\n'
                  '   ๕.๒ ประโยชน์จากการแบ่งพยัญชนะ สามารถนำมาใช้ในการสะกดคำได้\n\n',
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
