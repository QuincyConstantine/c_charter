import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart'; // Import your existing HomeScreen
import 'slider_screen.dart'; // Import the new SliderScreen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen') ?? false;

  runApp(MyApp(seen: seen));
}

class MyApp extends StatelessWidget {
  final bool seen;

  const MyApp({Key? key, required this.seen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: seen ? HomeScreen() : SliderScreen(), // Show SliderScreen if not seen, otherwise show HomeScreen
      routes: {
        '/home': (context) => HomeScreen(), // Define the route for HomeScreen
      },
    );
  }
}
