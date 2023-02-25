import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';
import 'package:taejai/pages/project/project_detail_pages.dart';

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
        recieveAmount: 100000,
        donateCount: 580,
        imageUrl: 'assets/images/p1.jpeg',
        projectDuration: '24 ก.พ. 2565 ถึง 28 ก.พ. 2566',
        projectArea: 'อำเภอสันติสุข จังหวัดน่าน'),
    Project(
        title: 'ปั้น 60 เยาวชนสู่นักบริบาลมืออาชีพเพื่อดูแลผู้สูงอายุ',
        description:
        'ทุนละ 28,000 บาทต่อคนจะทำให้เยาวชนด้อยโอกาสที่ขาดเงินได้เรียนต่อ',
        targetAmount: 2046000,
        duration: 322,
        recieveAmount: 200000,
        donateCount: 37,
        imageUrl: 'assets/images/p2.jpeg',
        projectDuration: '01 ก.พ. 2566 ถึง 30 ก.ย. 2566',
        projectArea: 'ทั่วประเทศ'),
    Project(
        title: 'โครงการดนตรีเพื่อเด็กในสถานสงเคราะห์',
        description:
        'กิจกรรมดนตรีเพื่อเด็กๆในมูลนิธิรักษ์ดรุณีจังหวัดเชียงใหม่ ได้มีโอกาสเรียนดนตรี',
        targetAmount: 49170,
        duration: 77,
        recieveAmount: 16000,
        donateCount: 21,
        imageUrl: 'assets/images/p3.jpeg',
        projectDuration: '04 มี.ค. 2566 ถึง 02 มี.ค. 2567',
        projectArea: 'จังหวัดเชียงใหม่'),
    Project(
        title: 'หนึ่งคนให้ หลายคนได้ยิน',
        description:
        'การสูญเสียการได้ยินเป็นอีกหนึ่งผลกระทบจากความผิดปกติบนใบหน้าและศีรษะ ',
        targetAmount: 660000,
        duration: 47,
        recieveAmount: 200000,
        donateCount: 213,
        imageUrl: 'assets/images/p4.jpeg',
        projectDuration: '1 ต.ค. 65 - 30 ก.ย. 66',
        projectArea: 'ทั่วประเทศ'),
    Project(
        title: 'ผ้าอ้อมเพื่อผู้ป่วยสูงอายุ',
        description:
        'ช่วยเหลือผู้ป่วยและผู้สูงอายุยากไร้ ด้วยการมอบผ้าอ้อมใช้ยามเจ็บป่วย',
        targetAmount: 3000000,
        duration: 322,
        recieveAmount: 520000,
        donateCount: 2215,
        imageUrl: 'assets/images/p5.jpeg',
        projectDuration: 'ดำเนินการต่อเนื่องตลอดทั้งปี',
        projectArea: 'กรุงเทพฯ และปริมณฑล'),
    Project(
        title: 'ทำหมันแมวสัญจรกับมูลนิธิรักษ์แมว',
        description:
        'ร่วมบริจาคเพื่อทำหมันแมว ลดการเกิดแมวข้างถนน ลดการเกิดโรคติดต่อให้กับแมวที่มีเจ้าของและไม่มีเจ้าของ โดยทุกยอดบริจาค 400 บาท สามารถทำหมันแมวได้ 1 ตัว',
        targetAmount: 4000000,
        duration: 322,
        recieveAmount: 30000,
        donateCount: 1587,
        imageUrl: 'assets/images/p6.jpeg',
        projectDuration: '1 ปี',
        projectArea: 'ภาคกลาง ประเทศไทย'),
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

          var descriptionStyle = const TextStyle(
            fontSize: 12.0,
            color: Colors.black54,
          );
          var amountStyle = const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          );

          var formatter = NumberFormat('#,###,000');
          var target = formatter.format(project.targetAmount);
          var percentText =
          ((project.recieveAmount / project.targetAmount) * 100)
              .toStringAsFixed(0);
          var percent = int.tryParse(percentText);

          // return InkWell()

          return InkWell(
            onTap: (){
              _handleClickProjectItem(projects[index]);
            } ,
              child: Card(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        project.imageUrl,
                        width: 60.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                      /*Container(
                        width: 60.0,
                        height: 60.0,
                        color: Colors.pink,
                      ),*/
                      const SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(project.title),
                          const SizedBox(height: 8.0),
                          Text(project.description, style: descriptionStyle),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('เป้าหมาย', style: descriptionStyle),
                          Text('$target บาท', style: amountStyle),
                        ],
                      ),
                      Text('$percentText%', style: descriptionStyle),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: percent!,
                        child: Container(
                          height: 10.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.0),
                          color: Colors.orange,
                        ),
                      ),
                      Expanded(
                        flex: 100 - percent,
                        child: Container(
                          height: 10.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.0),
                          color: const Color(0xFFE8E8E8), //Colors.grey[200],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('${project.duration} วัน', style: descriptionStyle),
                      Row(
                        children: [
                          const Icon(Icons.person, size: 14.0),
                          Text('${project.donateCount}',
                              style: descriptionStyle),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          );
        },
      ),
    );
  }

  void _handleClickProjectItem(Project p){
    print(p.targetAmount.toString());

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetailsPage(project: p,)),
    );
  }
}