import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'คณิตศาสตร์บทที่3 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Math03(),
    );
  }
}

class Math03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('คณิตศาสตร์ บทที่3 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'หลักการนับเบื้องต้นเป็นส่วนสำคัญของคณิตศาสตร์ที่เกี่ยวข้องกับการนับจำนวนของสิ่งต่างๆ โดยมักจะเริ่มต้นด้วยการนับจำนวนของสิ่งต่างๆ ในชีวิตประจำวัน เช่น นับจำนวนผลไม้ในตะกร้า, จำนวนคนในห้อง, หรือจำนวนรถที่ผ่านมา เป็นต้น\n\n'
                  'ในการนับเบื้องต้น เราใช้หลักการบางอย่างเพื่อช่วยให้การนับมีระเบียบและถูกต้อง โดยส่วนใหญ่จะใช้หลักการดังนี้\n\n'
                  '1. หลักการตระกูล (Principle of One-to-One Correspondence): เป็นหลักการที่กำหนดว่าถ้าสามารถจับคู่แต่ละสิ่งในเซตหนึ่งกับสิ่งในเซตอื่น โดยที่ไม่มีสิ่งใดจับคู่หลายครั้งหรือไม่มีสิ่งใดที่ไม่ได้ถูกจับคู่เลย แสดงว่าสองเซตนั้นมีจำนวนสมาชิกเท่ากัน\n\n'
                  '2. หลักการเรียงลำดับ (Principle of Order): เมื่อต้องการนับจำนวนวัตถุที่มีลำดับหรือเรียงลำดับ เราจะใช้หลักการเรียงลำดับ ซึ่งคือการกำหนดลำดับหรือเรียงลำดับที่เป็นรูปแบบที่เป็นระเบียบ ทำให้เราสามารถนับจำนวนนั้นๆ ได้อย่างชัดเจน\n\n'
                  '3. หลักการเพิ่ม (Principle of Addition): เมื่อเราต้องการนับจำนวนวัตถุที่มีส่วนร่วมหรือเพิ่มเติมกัน เราสามารถใช้หลักการเพิ่ม โดยการนับจำนวนของแต่ละส่วน แล้วรวมผลลัพธ์ทั้งหมดเข้าด้วยกัน\n\n'
                  '4. หลักการคูณ (Principle of Multiplication): เมื่อเราต้องการนับจำนวนวัตถุที่มีความสัมพันธ์แบบกระจาย หรือทำงานร่วมกัน เราสามารถใช้หลักการคูณ โดยการนับจำนวนของแต่ละส่วนแยกกัน แล้วนำผลคูณของจำนวนทั้งหมดมาเข้าด้วยกัน\n\n'
                  'การนับเบื้องต้นเป็นพื้นฐานที่สำคัญในการพัฒนาทักษะทางคณิตศาสตร์และใช้ในการแก้ปัญหาทางคณิตศาสตร์และวิทยาศาสตร์ในชีวิตประจำวัน นอกจากนี้ เรียนรู้เกี่ยวกับหลักการนับยังสร้างพื้นฐานที่แข็งแรงสำหรับการศึกษาเรื่องอื่นๆ ในคณิตศาสตร์ต่อไปด้วย\n\n',
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
