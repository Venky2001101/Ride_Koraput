import 'package:flutter/material.dart';
import 'package:ride_koraput/extension/box_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> list = [
    {"name": "What is a wild animal?", "icon": Icons.mic},
    {"name": "Scannig Images", "icon": Icons.scanner},
    {"name": "Analysis my dribbble shot", "icon": Icons.message},
    {"name": "How show the prototype figma", "icon": Icons.mic},
    {"name": "Translate this text", "icon": Icons.translate},
    {"name": "Generate blog title ideas", "icon": Icons.lightbulb},
    {"name": "Summarize this article", "icon": Icons.summarize},
    {"name": "Explain Flutter widgets", "icon": Icons.widgets},
    {"name": "Fix this code error", "icon": Icons.code},
    {"name": "Create social media caption", "icon": Icons.edit},
    {"name": "Design color palette", "icon": Icons.palette},
    {"name": "Write an email reply", "icon": Icons.email},
    {"name": "Find similar images", "icon": Icons.image_search},
    {"name": "Check grammar", "icon": Icons.spellcheck},
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.withAlpha(15),
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.all(2).copyWith(right: 15),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 20,
                child: Icon(Icons.filter_vintage, color: Colors.white),
                backgroundColor: Colors.black,
              ),
              SizedBox(width: 10),
              Text("Cooper", style: TextStyle(fontSize: 18)),
              5.wBox,
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
        actions: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey, // Optional background color
            ),
            clipBehavior: Clip.hardEdge,
            child: ClipRect(
              child: Align(
                alignment: Alignment.center,
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Image.asset(
                  'assets/profile.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),

          10.wBox,
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello James", style: TextStyle(fontSize: 35)),
              Text(
                "Make your day easy with us",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: height * 0.3,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        10.hBox,
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFd9d5ff),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Color(0xFFefecff),
                                        child: Icon(
                                          Icons.mic,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Talk with Cooper",
                                        style: TextStyle(fontSize: 23),
                                      ),
                                      Text(
                                        "Let's try it now",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),

                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              constraints: BoxConstraints(
                                                minWidth: double.infinity,
                                              ),
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                color: Color(0xfffbebb9),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor: Color(
                                                      0xfffcf4d4,
                                                    ),
                                                    child: Icon(
                                                      Icons.message,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  // SizedBox(height: 15),
                                                  Text(
                                                    "New Chat",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Expanded(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            minWidth: double.infinity,
                                          ),
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Color(0xff242529),
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Color(
                                                  0xff393a3e,
                                                ),
                                                child: Icon(
                                                  Icons.scanner_outlined,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Spacer(),
                                              SizedBox(
                                                width: width * 0.4,
                                                child: Text(
                                                  "Search by\tImage",
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                    color: Color(0xffbdbfc1),
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      right: 15,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "New",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              30.hBox, // SizedBox(height:30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Search",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),

                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              20.hBox,
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ).copyWith(right: 5),
                itemBuilder: (context, index) {
                  Map<String, dynamic> value = list[index];
                  return Container(
                    padding: EdgeInsets.all(8).copyWith(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.withAlpha(15),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(child: Icon(value["icon"])),
                        10.wBox,
                        Text(value["name"]),
                        Spacer(),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => 10.hBox,
                itemCount: list.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
