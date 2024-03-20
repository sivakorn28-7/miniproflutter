import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาภาษาอังกฤษบทที่2 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  SumE02(),
    );
  }
}

class SumE02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา ภาษาอังกฤษ บทที่2 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. คำนาม (Nouns)\n\n'
                  '   1.1 ประเภทของคำนาม\n\n'
                  '       - คำนามทั่วไป\n\n'
                  '       - คำนามเฉพาะ\n\n'
                  '       - คำนามสมอารมณ์\n\n'
                  '       - คำนามนาม\n\n'
                  '   1.2 การใช้งานของคำนาม:\n\n'
                  '       - กรรม\n\n'
                  '       - กริยา\n\n'
                  '       - ตามเสียง\n\n'
                  '2. สรรพนาม (Pronouns)\n\n'
                  '   2.1 ประเภทของสรรพนาม:\n\n'
                  '       - สรรพนามบุคคล\n\n'
                  '       - สรรพนามเจ้าของ\n\n'
                  '       - สรรพนามแสดงคำถาม\n\n'
                  '       - สรรพนามไม่จำกัด\n\n'
                  '   2.2 การใช้งานของสรรพนาม::\n\n'
                  '       - สรรพนามบุคคล\n\n'
                  '       - สรรพนามเจ้าของ\n\n'
                  '       - สรรพนามแสดงความเป็นเจ้าของ\n\n'
                  '3. ความสำคัญของคำนามและสรรพนาม\n\n',
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
