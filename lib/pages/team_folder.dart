import 'package:flutter/material.dart';

class TeamFolderPage extends StatefulWidget {
  const TeamFolderPage({super.key});

  @override
  State<TeamFolderPage> createState() => _TeamFolderPageState();
}

class _TeamFolderPageState extends State<TeamFolderPage> {
  double availableScreenWidth = 0;
  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            alignment: Alignment.bottomCenter,
            height: 170,
            decoration: BoxDecoration(color: Colors.blue.shade700),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shashwat",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Home Folder",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.3)),
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.3)),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications_none,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "Storage ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                        text: " 9.1/10GB",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      )
                    ])),
                const Text(
                  "Upgrade",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                buildFileSizeChart("SOURCES", Colors.blue, .3),
                SizedBox(
                  width: 2,
                ),
                buildFileSizeChart("DOCS", Colors.red, .25),
                SizedBox(
                  width: 2,
                ),
                buildFileSizeChart("IMAGES", Colors.yellow, .20),
                SizedBox(
                  width: 2,
                ),
                buildFileSizeChart("FREE", Colors.grey, .23),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            height: 30,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(25),
              children: [
                Text(
                  "Recently updated",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    buildFileColumn('prd', 'Desktop', ' ./sketch'),
                    SizedBox(
                      width: availableScreenWidth * .03,
                    ),
                    buildFileColumn('sketch', 'Mobile', ' ./prd'),
                    SizedBox(
                      width: availableScreenWidth * .03,
                    ),
                    buildFileColumn('prd', 'Interaction', ' ./sketch'),
                  ],
                ),
                Divider(
                  height: 60,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column buildFileColumn(String image, String filename, String extention) {
    return Column(
      children: [
        Container(
          width: availableScreenWidth * .31,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.all(38),
          height: 110,
          child: Image.asset('assets/images/$image.png'),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
              text: filename,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: extention,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                  ),
                ),
              ]),
        ),
      ],
    );
  }

  Column buildFileSizeChart(String title, Color color, double widthPercentage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: availableScreenWidth * widthPercentage,
          height: 4,
          color: color,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
