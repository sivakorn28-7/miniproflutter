import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาสังคมศึกษาบทที่2 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumSo02(),
    );
  }
}

class SumSo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา สังคมศึกษา บทที่2 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ภูมิศาสตร์กายภาพ\n\n'
                  'ภูมิศาสตร์กายภาพ เป็นการศึกษาระบบสิ่งแวดล้อม เพื่อให้เกิดความเข้าใจในความสัมพันธ์ของระบบเหล่านั้น การศึกษาภูมิศาสตร์กายภาพแบ่งเป็น ธรณีภาค บรรยากาศภาค อุทกภาค และชีวภาค โดยที่สิ่งแวดล้อมต่างๆ เหล่านี้มีความเกี่ยวข้องเชื่อมโยงกันเป็นระบบ และยังมีปฏิสัมพันธ์กับมนุษย์อีกด้วย มนุษย์จึงควรศึกษาเพื่อการปรับตัวเข้ากับสิ่งแวดล้อม และดำรงชีวิตได้อย่างเหมาะสม\n\n'
                  '1. ธรณีภาค (Lithosphere)\n\n'
                  'เป็นส่วนของโลกที่เป็นของแข็ง อยู่ชั้นนอกสุดของโลก แบ่งออกเป็น 2 ส่วนคือ แผ่นธรณีมหาสมุทร กับแผ่นธรณีทวีป การเคลื่อนที่ของแผ่นธรณีภาคก่อให้เกิดปรากฏการณ์ทางธรณีวิทยาแบบต่างๆ แบ่งการเคลื่อนที่ออกเป็น 3 ประเภทดังนี้\n\n'
                  '2. บรรยากาศภาค (Atmosphere) \n\n'
                  'เป็นส่วนของแก๊สชนิดต่างๆ ทั้งฝุ่นละออง และไอน้ำที่ห่อหุ้มโลก ประกอบด้วย\n\n'
                  '3. อุทกภาค (Hydrosphere)\n\n'
                  'บนโลกนี้ประกอบด้วยพื้นน้ำ 3 ใน 4 ส่วนของโลก ปรากฏในรูปแบบของน้ำในมหาสมุทร น้ำผิวดิน น้ำใต้ดิน ธารน้ำแข็ง ไอน้ำในบรรยากาศ\n\n'
                  '4. ชีวภาพ (Biosphere)\n\n'
                  'เป็นส่วนที่เป็นสิ่งมีชีวิตทั้งหมด ชีวนิเวศ หรือไบโอม\n\n',
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
