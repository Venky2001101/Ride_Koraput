import 'package:flutter/material.dart';
import 'package:ride_koraput/screens/bot_nav/call_screen.dart';
import 'package:ride_koraput/screens/bot_nav/edit_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final widgetList = [ProfilePage(), CallScreen(), EditScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueAccent,
        enableFeedback: true,
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Edit"),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final List<Map<String, dynamic>> lists = [
    {"name": "Personal Data", "icon": Icons.person},
    {"name": "settings", "icon": Icons.settings},
    {"name": "E-Statement", "icon": Icons.chat},
    {"name": "Referal Code", "icon": Icons.favorite},
  ];
  final List<Map<String, dynamic>> list2 = [
    {"name": "FAQs", "icon": Icons.more_horiz},
    {"name": "Our Handbook", "icon": Icons.edit_square},
    {"name": "Community", "icon": Icons.groups_3},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/profile.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // child: Image.asset('assets/profile.jpg', fit: BoxFit.fill),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "William Jhon malik",
                          style: TextStyle(fontSize: 20),
                        ),

                        Text("Aggresive Invester"),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  Map<String, dynamic> k = lists[index];
                  return Container(
                    height: 40,
                    decoration: BoxDecoration(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(
                            255,
                            246,
                            241,
                            241,
                          ),
                          child: Icon(k["icon"], color: Colors.black, size: 25),
                        ),
                        SizedBox(width: 10),
                        Text(k["name"]),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded, size: 20),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
                itemCount: lists.length,
              ),

              Divider(height: 30),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Map<String, dynamic> k2 = list2[index];
                  return Container(
                    height: 40,
                    decoration: BoxDecoration(),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(
                            255,
                            246,
                            241,
                            241,
                          ),
                          child: Icon(
                            k2["icon"],
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(width: 10),
                        Text(k2['name']),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded, size: 20),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
                itemCount: list2.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
