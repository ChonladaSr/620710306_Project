//ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';

var title = const TextStyle(
  fontSize: 20.0,
  color: Colors.black54,
  overflow: TextOverflow.ellipsis,
);
var receiveAmountStyle = const TextStyle(
  fontSize: 15.0,
  color: Colors.pink,
  overflow: TextOverflow.ellipsis,
);
var descriptionStyle = const TextStyle(
  fontSize: 12.0,
  color: Colors.black54,
  overflow: TextOverflow.ellipsis,
);
var amountStyle = const TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  color: Colors.black54,
);

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,###,000');
    var target = formatter.format(project.PeopleLike);

    return Scaffold(
      appBar: AppBar(
          title: Text(
            project.title,
            overflow: TextOverflow.ellipsis,
          )),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(project.title),
                const SizedBox(height: 10.0),
                Image.asset(
                  project.imageUrl,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10.0),
                Text('Artist:  ${project.description}'),
                const SizedBox(height: 10.0),
                Text('Release Date:  ${project.releaseDate}'),
                const SizedBox(height: 10.0),
                Text('Company:  ${project.company}'),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  child: Text('ยอดกดถูกใจ'),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text('❤ $target',style: receiveAmountStyle),
                ),
                const SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                    ],
                  ),
                ),

                SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(flex :1,
                      child: OutlinedButton(
                        onPressed: () {
                          //todo:
                        },
                        child: Text('❤ ฉันชอบเพลงนี้'),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Share',),
                    //Icon(Icons.shopping_cart_outlined),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.line_style),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.facebook_sharp),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.tab),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}