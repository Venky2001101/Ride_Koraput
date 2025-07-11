import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ride_koraput/screens/dummy_screen.dart';
import 'package:ride_koraput/screens/home_screen.dart';
import 'package:ride_koraput/screens/bot_nav/profile_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
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
