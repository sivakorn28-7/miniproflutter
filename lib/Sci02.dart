import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'วิทยาศาสตร์บทที่2 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Sci02(),
    );
  }
}

class Sci02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('วิทยาศาสตร์ บทที่2 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'เรื่อง "โครงสร้างอะตอม" เป็นส่วนสำคัญของวิชาเคมีในระดับมัธยมศึกษาขั้นมัธยมปีที่ 4 เนื้อหานี้มุ่งเน้นการศึกษาโครงสร้างพื้นฐานของอะตอม ซึ่งเป็นหน่วยสร้างพื้นฐานของสารทุกชนิดที่ประกอบกันเป็นส่วนประกอบของสารทุกชนิดที่เราเห็นในชีวิตประจำวัน เรามาอธิบายโครงสร้างของอะตอมในมุมมองของวิทยาศาสตร์เคมีต่อไปครับ:\n\n'
                  '1. โครงสร้างพื้นฐานของอะตอม: อะตอมประกอบด้วยส่วนประกอบหลัก ๆ สองส่วน คือ นิวเคลียสและอิเล็กตรอน\n\n'
                  '   1.1 นิวเคลียส (Nucleus): เป็นส่วนกลางของอะตอมที่ประกอบด้วยโปรตอนและนิวตรอน โปรตอนมีประจุบวกและตั้งอยู่ตรงกลางของนิวเคลียส ในขณะที่นิวตรอนมีประจุลบและเคลื่อนที่รอบๆ นิวเคลียสตามเส้นรอบๆ โปรตอนในแบบจัดกลุ่ม\n\n'
                  '   1.2 อิเล็กตรอน (Electrons): อิเล็กตรอนคืออนุภาคที่มีประจุลบและเคลื่อนที่รอบๆ นิวเคลียสในโครงสร้างลักษณะวงรี เมื่ออนุภาคเหล่านี้อยู่รอบๆ นิวเคลียสอย่างมีระเบียบเรียกว่าเป็นเปลือกอิเล็กตรอน\n\n'
                  '2. โครงสร้างระดับอะตอม: โครงสร้างระดับอะตอมแบ่งออกเป็นสามส่วนหลัก ๆ คือ โปรตอนที่ประกอบด้วยประจุบวกและนิวตรอนที่เคลื่อนที่รอบๆ โปรตอน และเปลือกอิเล็กตรอน\n\n'
                  '   2.1 โปรตอน (Protons): โปรตอนมีประจุบวกและมวลเท่ากับนิวตรอน โปรตอนหากจัดกลุ่มกับนิวเคลียสแล้วจะมีจำนวนเท่ากับจำนวนอิเล็กตรอนในอะตอม เพื่อให้สมดุลไฟฟ้าของอะตอม\n\n'
                  '   2.2 นิวตรอน (Neutrons): นิวตรอนมีมวลเท่ากับโปรตอน แต่ไม่มีประจุไฟฟ้า เป็นส่วนประกอบที่อยู่ในนิวเคลียสร่วมกับโปรตอน\n\n'
                  '   2.3 เปลือกอิเล็กตรอน (Electron Shell): เป็นชั้นของอิเล็กตรอนที่เคลื่อนที่รอบๆ นิวเคลียส เป็นการกลุ่มเรียงต่อกันของอิเล็กตรอนที่มีพลังงานเท่ากัน\n\n'
                  '3. โมเดลอะตอม: มีหลายโมเดลที่ใช้ในการอธิบายโครงสร้างของอะตอม โมเดลที่ใช้กันอย่างแพร่หลายคือโมเดลโรงละคร (Bohr Model) ที่พัฒนาโดยนีลส์ โบร์ ในปี 1913 และโมเดลควอนตัม (Quantum Model) ที่ใช้ระบบของฟังก์ชันควอนตัมเพื่ออธิบายพฤติกรรมของอิเล็กตรอนในระดับพลังงานต่างๆ โดยเน้นที่ความน่าจะเป็นในการพบอิเล็กตรอน\n\n'
                  'โครงสร้างของอะตอมเป็นพื้นฐานสำคัญที่เข้าใจเพื่อทราบถึงพฤติกรรมและสมบัติของสารต่าง ๆ ที่ประกอบด้วยอะตอม เช่น การเชื่อมต่อกันระหว่างอะตอมในสารเป็นต้น หวังว่าข้อมูลนี้จะเป็นประโยชน์สำหรับคุณในการเรียนรู้เรื่องโครงสร้างอะตอมในระดับมัธยมศึกษาครับ หากมีคำถามเพิ่มเติม ไม่ลังเลที่จะถามเพิ่มเติมนะครับ!\n\n',
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