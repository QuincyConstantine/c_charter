import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> _images = [
    'assets/image/guide_1.png', // Add your images in assets folder
    'assets/image/guide_2.png',
    'assets/image/guide_3.png',
    'assets/image/guide_4.png',
    'assets/image/feedback_1.png',
    'assets/image/feedback_2.png',
    'assets/image/feedback_3.png',
    'assets/image/feedback_4.png',
    'assets/image/feedback_5.png',
  ];f

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
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: _images.length,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
                SizedBox(height: 16),
                _currentPage == _images.length - 1
                    ? ElevatedButton(
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('seen', true);
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.withOpacity(1), // Background color
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Optional padding
                  ),
                  child: Text(
                    'Enter',
                    style: TextStyle(
                      fontSize: 24.0, // Increased font size
                      color: Colors.white, // Text color
                    ),
                  ),
                )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
