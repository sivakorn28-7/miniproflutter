import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาภาษาไทยบทที่2 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumTh02(),
    );
  }
}

class SumTh02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา ภาษาไทย บทที่2 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'การฟังและการดูให้สัมฤทธิผล\n\n'
                  '๑. ความหมายของการฟังและการดู\n\n'
                  '๒. ความสำคัญของการฟังและการดู\n\n'
                  '๓. จุดมุ่งหมายของการฟังและการดู\n\n'
                  '๔. หลักการฟังและการดู\n\n'
                  '๕. การฟังและการดูสิ่งที่เป็นความรู้และความบันเทิง\n\n'
                  '๖. การฟังและการดูอย่างมีวิจารณญาณ\n\n'
                  '๗. การฟังให้สัมฤทธิผล\n\n'
                  '๘. มารยาทในการฟังและการดู\n\n'
                  '๙. การแสดงความคิดเห็นและการวิพากษ์วิจารณ์จากการฟังและการดู\n\n',
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
