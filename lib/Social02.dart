import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สังคมศึกษาบทที่2 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Social02(),
    );
  }
}

class Social02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สังคมศึกษา บทที่2 มัธยมปลาย'),
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
                  '   1.1 การเคลื่อนที่เข้าหากัน เกิดเป็นแนวภูเขาไฟ เกิดเป็นแนวเกาะภูเขาไฟในมหาสมุทร เกิดเป็นแนวเทือกเขาสูงแนวยาว\n\n'
                  '   1.2 การเคลื่อนที่แยกออกจากกัน เกิดเป็นสันเขากลางมหาสมุทร\n\n'
                  '   1.3 การเคลื่อนที่ผ่านกัน เกิดเป็นรอยเลื่อนตามแนวระดับ\n\n'
                  'ภูมิประเทศเกิดจากการที่เปลือกโลกมีการปรับตัวช้าๆ ด้วยกระบวนการที่สำคัญ ทำให้เกิดการเปลี่ยนแปลงเป็นภูมิประเทศ ได้แก่\n\n'
                  '- กระบวนการแปรสันฐาน (Tectonic process) ก่อให้เกิดภูมิประเทศที่สำคัญ ได้แก่ ภูเขา เนินเขา ที่ราบสูง ที่ราบ เช่น ภูเขาในภาคเหนือ ภาคตะวันตก และภาคใต้ของประเทศไทย\n\n'
                  '- กระบวนการปรับระดับผิวแผ่นดิน (Gradation process) เป็นกระบวนการเปลี่ยนแปลงช้าๆ ด้วยตัวการธรรมชาติ ได้แก่ ลม แม่น้ำ ธารน้ำแข็ง คลื่น กระแสน้ำ ก่อให้เกิดภูมิประเทศ เช่น เนินตะกอนน้ำพารูปพัด ดินดอนสามเหลี่ยม สันดอนจะงอย ฟยอร์ด เกาะหินโด่ง เป็นต้น\n\n'
                  '- กระบวนการจากภายนอกโลก (Extraterrestrial process) เป็นการเปลี่ยนแปลงของภูมิประเทศด้วยตัวการจากภายนอกโลก เช่น อุกกาบาต เป็นต้น\n\n'
                  
                  '2. บรรยากาศภาค (Atmosphere) \n\n'
                  'เป็นส่วนของแก๊สชนิดต่างๆ ทั้งฝุ่นละออง และไอน้ำที่ห่อหุ้มโลก ประกอบด้วย\n\n'
                  '   2.1 ชั้นบรรยากาศของโลก สามารถจำแนกได้เป็น 5 ชั้นคือ\n\n'
                  '     - โทรโพสเฟียร์ เป็นชั้นบรรยากาศที่อยู่ล่างสุด\n\n'
                  '     - สแตรโทสเฟียร์ เป็นขั้นที่เหมาะแก่การบิน และเป็นชั้นโอโซน\n\n'
                  '     - เมโซสเฟียร์ ช่วยเผาไหม้วัตถุจากอวกาศก่อนตกลงมาบนผิวโลก\n\n'
                  '     - เทอร์โมสเฟียร์ เกิดปรากฏการณ์แสงออโรรา การสะท้อนคลื่นวิทยุทำได้ดี\n\n'
                  '     - เอกโซสเฟียร์ เป็นชั้นที่มีดาวเทียมโคจร\n\n'
                  '   2.2 ลม เป็นการเคลื่อนที่ของอากาศในแนวระนาบขนานกับพื้นโลก แบ่งเป็น\n\n'
                  '     - ลมประจำปี เช่น ลมค้า, ลมประจำตะวันตก, ลมขั้วโลก\n\n'
                  '     - ลมมรสุม เช่น ลมมรสุมฤดูหนาว, ลมมรสุมฤดูร้อน\n\n'
                  '     - ลมประจำเวลา เช่น ลมบก-ลมทะเล, ลมภูเขา-ลมหุบเขา\n\n'
                  '     - ลมประจำถิ่น เช่น ลมว่าว-ลมตะเภา\n\n'
                  '   2.3 ลักษณะภูมิอากาศ ปัจจัยที่ส่งผลให้เกิดภูมิประเทศ ได้แก่ ที่ตั้งตามละติจูด ลมประจำ การไหลเวียนของกระแสน้ำในมหาสมุทร ระดับความสูงต่ำของพื้นที่ ระยะห่างจากทะเล\n\n'
                  
                  '3. อุทกภาค (Hydrosphere)\n\n'
                  'บนโลกนี้ประกอบด้วยพื้นน้ำ 3 ใน 4 ส่วนของโลก ปรากฏในรูปแบบของน้ำในมหาสมุทร น้ำผิวดิน น้ำใต้ดิน ธารน้ำแข็ง ไอน้ำในบรรยากาศ ส่วนกระแสน้ำในมหาสมุทรแบ่งตามอุณหภูมิของน้ำได้เป็น 2 ประเภท ได้แก่ กระแสน้ำอุ่น เช่น กระแสน้ำอุ่นอะแลสกา กระแสน้ำอุ่นกัลฟ์สตรีม และกระแสน้ำเย็น เช่น กระแสน้ำเย็นแลบราดอร์ กระแสน้ำเย็นเบงเกวลา เป็นต้น\n\n'
                  
                  '4. ชีวภาพ (Biosphere)\n\n'
                  'เป็นส่วนที่เป็นสิ่งมีชีวิตทั้งหมด ชีวนิเวศ หรือไบโอม คือ ระบบนิเวศที่มีองค์ประกอบทางปัจจัยกายภาพและชีวภาพคล้ายคลึงกัน แบ่งออกเป็น\n\n'
                  '   4.1 ชีวนิเวศบนบก เช่น ป่าดิบชื้น, ป่าผลัดใบเขตอบอุ่น, ป่าสน, ทุ่งหญ้าเขตอบอุ่น, ทุ่งหญ้าเขตร้อนชื้น, ทะเลทราย, ทุนดรา\n\n'
                  '   4.2 ชีวนิเวศในน้ำ เช่น ชีวนิเวศแหล่งน้ำจืด, ชีวนิเวศแหล่งน้ำเค็ม\n\n',
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
