import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../service_list/stac_office_services.dart';

class StacOfficeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StacOfficeServicesScreen()),
        );
      },
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9, // Set the width of the card
          height: 200, // Set the height of the card
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFF20B2AA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.account_balance,
                size: 50,
                color: Colors.white, // Icon color to match Google Classroom style
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'STAC',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'STIMULATION AND THERAPEUTIC \nACTIVITY CENTER',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Click to view services',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              Spacer(), // This will push the vertical ellipsis to the end
              PopupMenuButton<int>(
                icon: Icon(Icons.more_vert, color: Colors.white),
                onSelected: (item) => _handleMenuClick(context, item),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text('Send Feedback'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleMenuClick(BuildContext context, int item) {
    switch (item) {
      case 0:
        _launchURL('https://www.google.com/');
        break;
    }
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
