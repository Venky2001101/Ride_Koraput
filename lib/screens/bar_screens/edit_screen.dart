import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);

  @override
  void initState() {
    super.initState();
    // tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  List<Widget> tScreens = [
    Center(child: Icon(Icons.woman, size: 100)),
    Center(child: Icon(Icons.man, size: 100)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(blurRadius: 20, color: Colors.grey)],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: kToolbarHeight + 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("App Bar Demo", style: TextStyle(fontSize: 20)),
              Icon(Icons.person),
            ],
          ),
        ),
        SizedBox(width: 10),
        Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.all(20),
          child: TabBar(
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            controller: tabController,
            indicator: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(30),
            ),
            tabs: [
              Tab(icon: Icon(Icons.woman), child: Text("Amma")),
              Tab(icon: Icon(Icons.man), child: Text("Nanna")),
            ],
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: TabBarView(controller: tabController, children: tScreens),
        ),
      ],
    );
  }
}
