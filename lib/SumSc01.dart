import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาวิทยาศาสตร์บทที่ 1 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumSc01(),
    );
  }
}

class SumSc01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา วิทยาศาสตร์ บทที่ 1 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' การเคลื่อนที่\n\n'
                  '   การเคลื่อนที่และตำแหน่ง: การเปลี่ยนตำแหน่งของวัตถุตามเวลา แบ่งเป็นเส้นตรงและโค้ง\n\n'
                  '   ความเร็ว: อัตราการเปลี่ยนแปลงของตำแหน่งต่อเวลา หาความเร็วเฉลี่ยและสูงสุดได้\n\n'
                  '   เวลา: ปัจจัยสำคัญในการวัดการเคลื่อนที่ หน่วยเป็นวินาที (s)\n\n'
                  '   การเคลื่อนที่แบบเส้นตรงและแรง: อธิบายโดยกฎของนิวตัน\n\n'
                  '   การเคลื่อนที่แบบเส้นตรงและค่าเร็วต่างๆ: ใช้สมการหาค่าระยะทาง เวลา และความเร็วเฉลี่ย\n\n'
                  '   การกระทำของแรง: แรงเปลี่ยนแปลงสถานะการเคลื่อนที่ แบ่งเป็นแรงต่างๆ\n\n',
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
