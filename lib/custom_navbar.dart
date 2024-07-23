import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final double width;

  CustomNavBar({required this.scaffoldKey, this.width = double.infinity});

  @override
  Size get preferredSize => Size(width, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Colors.grey[200], // Light gray background
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(0), // No margin
        child: AppBar(
          backgroundColor: Colors.blue, // White background for the AppBar
          elevation: 0.0, // No shadow for the AppBar
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
          ),
          title: Text("Citizen's Charter", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
