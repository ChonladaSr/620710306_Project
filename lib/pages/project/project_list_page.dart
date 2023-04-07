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
        title: 'Kitsch',
        description:
        'IVE (아이브)',
        PeopleLike: 68090,
        imageUrl: 'assets/images/photo1.jpg',
        releaseDate: '2023.03.27',
        company: 'Starship Entertainment'),
    Project(
        title: '꽃',
        description:
        '지수 (JISOO)',
        PeopleLike: 45491,
        imageUrl: 'assets/images/photo2.jpg',
        releaseDate: '2023.03.31',
        company: 'YG Entertainment'),
    Project(
        title: 'Ditto',
        description:
        'NewJeans',
        PeopleLike: 246668,
        imageUrl: 'assets/images/photo3.jpg',
        releaseDate: '2023.01.02',
        company: 'ADOR'),
    Project(
        title: 'Love Me Like This',
        description:
        'NMIXX',
        PeopleLike: 8413 ,
        imageUrl: 'assets/images/photo4.jpg',
        releaseDate: '2023.03.20',
        company: 'JYP Entertainment'),
    Project(
        title: 'Shut Down',
        description:
        'BLACKPINK',
        PeopleLike: 42469  ,
        imageUrl: 'assets/images/photo5.jpg',
        releaseDate: '2022.09.16',
        company: 'YG Entertainment'),
    Project(
        title: 'Back Door',
        description:
        'Stray Kids (스트레이 키즈)',
        PeopleLike: 50526   ,
        imageUrl: 'assets/images/photo6.jpg',
        releaseDate: '2020.09.14',
        company: 'JYP Entertainment'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('melon chart')),
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
          var target = formatter.format(project.PeopleLike);

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
    //print(p.targetAmount.toString());

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetailsPage(project: p,)),
    );
  }
}