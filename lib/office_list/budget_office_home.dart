import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../service_list/budget_office_services.dart';
import 'package:url_launcher/url_launcher.dart';
class BudgetOfficeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BudgetOfficeServicesScreen()),
        );
      },
      child: Card(
        margin: EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9, // Set the width of the card
          height: 150, // Set the height of the card
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color(0xFF673AB7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.calculator, // Using Font Awesome dollar sign icon
                size: 50,
                color: Colors.white,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Budget Office',
                    style: TextStyle(
                      fontSize: 20,
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
}
void _handleMenuClick(BuildContext context, int item) {
  switch (item) {
    case 0:
      _launchURL('https://forms.gle/MCTEizPKj4nyS56Y9');
      break;
  }
}

void _launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}
