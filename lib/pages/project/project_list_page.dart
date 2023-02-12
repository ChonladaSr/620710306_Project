import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
        title: 'ต้นไม้ของเรา',
        description:
        'ร่วมอุปถัมภ์ต้นไม้ ต้นละ 100 บาท เพื่อฟื้นฟูแหล่งต้นน้ำจังหวัดน่าน',
        targetAmount: 1100000,
        duration: 16,
        recieveAmount: 54,
        donateCount: 580
    ),
    Project(
        title: 'ปั้น 60 เยาวชนสู่นักบริบาลมืออาชีพเพื่อดูแลผู้สูงอายุ',
        description:
        'ทุนละ 28,000 บาทต่อคนจะทำให้เยาวชนด้อยโอกาสที่ขาดเงินได้เรียนต่อ',
        targetAmount: 2046000,
        duration: 322,
        recieveAmount: 1,
        donateCount: 37),
    Project(
        title: 'โครงการดนตรีเพื่อเด็กในสถานสงเคราะห์',
        description:
        'กิจกรรมดนตรีเพื่อเด็กๆในมูลนิธิรักษ์ดรุณีจังหวัดเชียงใหม่ ได้มีโอกาสเรียนดนตรี',
        targetAmount: 49170,
        duration: 77,
        recieveAmount: 16,
        donateCount: 21),
    Project(
        title: 'หนึ่งคนให้ หลายคนได้ยิน',
        description:
        'การสูญเสียการได้ยินเป็นอีกหนึ่งผลกระทบจากความผิดปกติบนใบหน้าและศีรษะ ',
        targetAmount: 660000,
        duration: 47,
        recieveAmount: 16,
        donateCount: 213),
    Project(
        title: 'ผ้าอ้อมเพื่อผู้ป่วยสูงอายุ',
        description:
        'ช่วยเหลือผู้ป่วยและผู้สูงอายุยากไร้ ด้วยการมอบผ้าอ้อมใช้ยามเจ็บป่วย',
        targetAmount: 3000000,
        duration: 322,
        recieveAmount: 52,
        donateCount: 2215),
    Project(
        title: 'ทำหมันแมวสัญจรกับมูลนิธิรักษ์แมว',
        description:
        'ร่วมบริจาคเพื่อทำหมันแมว ลดการเกิดแมวข้างถนน ลดการเกิดโรคติดต่อให้กับแมวที่มีเจ้าของและไม่มีเจ้าของ โดยทุกยอดบริจาค 400 บาท สามารถทำหมันแมวได้ 1 ตัว',
        targetAmount: 4000000,
        duration: 322,
        recieveAmount: 30,
        donateCount: 1587),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เทใจ')),
      body: ListView.builder(
        itemCount: projects.length,
        // Callback function
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];

          var myTextStyle = const TextStyle(fontSize: 12.0, color: Colors.black54);

          var formatter = NumberFormat('#,###,000');
          var target = formatter.format(project.targetAmount);

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(project.title),
                  const SizedBox(height: 8.0),
                  Text(project.description, style: myTextStyle),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${project.duration.toString()} วัน', style: myTextStyle),
                      Text('$target บาท', style: myTextStyle),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}