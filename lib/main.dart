import 'package:flutter/material.dart';
import 'package:ride_koraput/screens/home_screen.dart';

void main() {
  return runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
