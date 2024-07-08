import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> _images = [
    'assets/image/bungoton.jpg', // Add your images in assets folder
    'assets/image/iro.jpg',
    'assets/image/orasan.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(_images[index], fit: BoxFit.cover);
            },
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: _currentPage == _images.length - 1
                ? ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setBool('seen', true);
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('Enter'),
            )
                : SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
