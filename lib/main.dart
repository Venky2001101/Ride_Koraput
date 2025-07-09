import 'package:flutter/material.dart';
import 'package:ride_koraput/screens/dummy_screen.dart';
import 'package:ride_koraput/screens/home_screen.dart';
import 'package:ride_koraput/screens/profile_screen.dart';

void main() {
  return runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
