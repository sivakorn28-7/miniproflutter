import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'สรุปเนื้อหาสังคมศึกษาบทที่1 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SumSo01(),
    );
  }
}

class SumSo01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปเนื้อหา สังคมศึกษา บทที่1 มัธยมปลาย'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'กลไกราคาในระบบเศรษฐศาสตร์\n\n'
                  '1. ตลาด\n\n'
                  ' ประเภทของตลาด แบ่งเป็น 2 ประเภท คือ\n\n'
                  '   1.1 ตลาดแข่งขันสมบูรณ์\n\n'
                  '   1.2 ตลาดแข่งขันไม่สมบูรณ์\n\n'
                  '2. กลไกราคา\n\n'
                  '   2.1 กฎของอุปสงค์ คือ ถ้าราคาสินค้าลดลง ปริมาณที่ผู้ซื้อจะซื้อสินค้ามากขึ้น\n\n'
                  '   2.2 กฎของอุปทาน คือ ถ้าราคาสินค้าสูงขึ้น จำนวนสินค้าที่เสนอขายย่อมมากขึ้น\n\n'
                  '3. ปัญหาทางเศรษฐกิจ\n\n'
                  '   3.1 ภาวะเงินเฟ้อ เป็นภาวะที่เกิดขึ้นจริงที่ระดับราคาสินค้าโดยทั่วไปเพิ่มขึ้นอย่างรวดเร็วและต่อเนื่อง\n\n'
                  '   3.2 ภาวะเงินฝืด เป็นภาวการณ์ทางเศรษฐกิจที่ระดับรายได้ประชาชาติหรือผลิตภัณฑ์มวลรวมลดลงอย่างต่อเนื่อง\n\n'
                  '   3.3 การว่างงาน ภาวะที่ผู้อยู่ในกำลังแรงงานไม่มีงาน\n\n',
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
