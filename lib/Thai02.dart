import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ภาษาไทยบทที่2 มัธยมปลาย',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Thai02(),
    );
  }
}

class Thai02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ภาษาไทย บทที่2 มัธยมปลาย'),
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
                  '   ๑)การฟัง เป็นกระบวนการรับรู้ของมนุษย์เกิดจากเสียงที่ได้ยินทางหู นำไปสู่การตีความของสมอง ทำให้ผู้ฟังเข้าใจสารและมีปฏิกิริยาตอบสนอง\n\n'
                  '   ๒)การดู เป็นกระบวนการรับรู้ของมนุษย์เกิดจากภาพที่มองเห็นด้วยตา มีกระบวนการตีความและตอบสนองเหมือนการฟัง\n\n'
                  '๒. ความสำคัญของการฟังและการดู\n\n'
                  '   ๑) เป็นการแสดงมารยาทที่ดีในการเข้าสังคม\n\n'
                  '   ๒) ทำให้เข้าใจสารได้ครบถ้วน\n\n'
                  '   ๓) ช่วยพัฒนาทักษะด้านภาษาอื่น ๆ\n\n'
                  '   ๔) เป็นพื้นฐานของสมรรถภาพทางความคิด\n\n'
                  '   ๕) ทำให้รู้คำศัพท์เพิ่ม\n\n'
                  '   ๖) ก่อให้เกิดความร่วมมือกันของคนในสังคม\n\n'
                  '๓. จุดมุ่งหมายของการฟังและการดู\n\n'
                  '   ๑) เพื่อติดต่อสื่อสารในชีวิตประจำวัน\n\n'
                  '   ๒) เพื่อรับความรู้\n\n'
                  '   ๓) เพื่อความเพลิดเพลิน\n\n'
                  '   ๔) เพื่อคติชีวิตและความจรรโลงใจ\n\n'
                  '๔. หลักการฟังและการดู\n\n'
                  '   ๑) ตั้งจุดมุ่งหมายหรือจุดประสงค์ของการฟังและการดู\n\n'
                  '   ๒) วิเคราะห์จุดมุ่งหมายของผู้พูดและเรื่องที่ดู\n\n'
                  '   ๓) ฟังและดูสารนั้นตั้งแต่ต้นจนจบโดยไม่ขาดตอน\n\n'
                  '   ๔) จับประเด็นความหลักและสรุปสาระสำคัญให้\n\n'
                  '   ๕) หลีกเลี่ยงการจับผิดผู้พูด\n\n'
                  '   ๖) ต้องให้เกียรติและให้กำลังใจแก่ผู้พูด\n\n'
                  '   ๗) วิเคราะห์ วินิจฉัยข้อเท็จจริง และข้อคิดเห็นของเรื่องที่ฟังและดูอย่างมีวิจารณญาณ\n\n'
                  '   ๘) มีทัศนคติที่ดีต่อผู้พูดและสิ่งที่ดู\n\n'
                  '   ๙) ฟังและดูอย่างสร้างสรรค์\n\n'
                  '   ๑๐) ฟังและดูอย่างสำรวมและมีมารยาท\n\n'
                  '๕. การฟังและการดูสิ่งที่เป็นความรู้และความบันเทิง\n\n'
                  '   ๑) การฟังและการดูสิ่งที่เป็นความรู้ ต้องเป็นข้อเท็จจริงที่สามารถตรวจสอบได้ เช่น ข่าวสาร งานวิชาการ เป็นประโยชน์ต่อตนเองและผู้อื่นบางเรื่องมีความสลับซับซ้อน เข้าใจยาก แต่บางเรื่องก็สามารถเข้าใจได้โดยง่าย\n\n'
                  '   ๒) การฟังและการดูสิ่งที่เป็นความบันเทิง จะช่วยให้รู้สึกผ่อนคลาย เพราะร่างกายและจิตใจได้พักผ่อน\n\n'
                  '๖. การฟังและการดูอย่างมีวิจารณญาณ\n\n'
                  ' การใช้วิจารณญาณจะช่วยให้ผู้ฟังและผู้ดูเข้าใจความหมายและวัตถุประสงค์ของผู้ส่งสารได้ชัดเจนยิ่งขึ้น โดยผู้ฟังและผู้ดูมีหลักปฏิบัติดังนี้\n\n'
                  '   ๑) เข้าใจเรื่อง\n\n'
                  '   ๒) จับประเด็นได้\n\n'
                  '   ๓) วิเคราะห์ได้\n\n'
                  '   ๔) ตีความได้\n\n'
                  '   ๕) ประเมินค่าได้\n\n'
                  '   ๖) จดบันทึกได้\n\n'
                  '๗. การฟังให้สัมฤทธิผล\n\n'
                  'หมายถึง การที่เราฟังแล้วเกิดผลลัพธ์ตรงตามวัตถุประสงค์ของผู้พูด\n\n'
                  '๘. มารยาทในการฟังและการดู\n\n'
                  'หมายถึง มารยาทสังคมในการฟังและการดู ที่สุภาพเรียบร้อย ถูกต้องเหมาะสมตามกาลเทศะ\n\n'
                  '๙. การแสดงความคิดเห็นและการวิพากษ์วิจารณ์จากการฟังและการดู\n\n'
                  'เป็นปฏิกิริยาโต้ตอบของผู้รับสารในกระบวนการสื่อสาร\n\n',
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
