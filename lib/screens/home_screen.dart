import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(radius: 15),
            SizedBox(width: 10),
            Text("Cooper"),
          ],
        ),
        actions: [CircleAvatar(radius: 40)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello James", style: TextStyle(fontSize: 30)),
            Text(
              "Make your day easy with us",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            SizedBox(height: 30),
            SizedBox(height: height * 0.3, child: Row(children: [ 

            ],)),
          ],
        ),
      ),
    );
  }
}
