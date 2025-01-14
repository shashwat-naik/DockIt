import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  final String folderName;
  const ProjectPage({required this.folderName, super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              alignment: Alignment.bottomCenter,
              height: 170,
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chatbox",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "Project",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.1)),
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 28,
                            color: Colors.blue.shade700,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.1)),
                        child: IconButton(
                          icon: Icon(
                            Icons.share_outlined,
                            size: 28,
                            color: Colors.blue.shade700,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 25),
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildAvatar('Krisha', 'mia'),
                  buildAvatar('Rihan', 'adam'),
                  buildAvatar('Inaaya', 'jess'),
                  buildAvatar('Tanveer', 'mike'),
                  buildAvatar('Ishita', 'alie'),
                  buildAvatar('Nandan', 'brandon'),
                ],
              ),
            ),
            Divider(),
          ],
        ));
  }

  Widget buildAvatar(String name, String imgName) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: Image.asset('assets/images/$imgName.jpeg').image,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
