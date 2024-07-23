import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart'; // Import your existing HomeScreen
import 'slider_screen.dart'; // Import the new SliderScreen
import 'splash_screen.dart'; // Import the SplashScreen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen') ?? false;

  runApp(MyApp(seen: seen));
}

class MyApp extends StatefulWidget {
  final bool seen;

  const MyApp({Key? key, required this.seen}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  void _navigateToNext() async {
    await Future.delayed(Duration(seconds: 2)); // Display splash screen for 2 seconds
    setState(() {
      _showSplash = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _showSplash ? SplashScreen() : (widget.seen ? HomeScreen() : SliderScreen()), // Show SplashScreen first
      routes: {
        '/home': (context) => HomeScreen(), // Define the route for HomeScreen
      },
    );
  }
}
