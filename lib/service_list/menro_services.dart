import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MenroServicesScreen extends StatelessWidget {
  final List<String> menroCards = [
    'MENRO',
    'REQUEST FOR PRE-INSPECTION TO CUT TREES (IN COORDINATION WITH MDRRMC)',
    'REPORT/COMPLAINT RECEIVED BY THE MENRO OFFICE RELATIVE TO ILLEGAL CUTTING OF TREES, ILLEGAL FISHING, AND OTHER VARIOUS ACTIVITIES PUNISHABLE UNDER MUNICIPAL ORDINANCES AND NATIONAL LAWS (WITH THE ASSISTANCE OF THE PNP – TUBIGON, DENR, OR BFAR).'
  ];

  final List<String> backContents = [
    'Details about MENRO services',
    'Any person can request for inspection as pre-requisite for their application for cutting permit at the CENRO/DENR.',
    'Any person has the right to report and complaint (thru verbal, mobile phone or social media) any illegal activities committed within the territorial jurisdiction of the municipality.',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'REQUEST FOR PRE-INSPECTION TO CUT TREES (IN COORDINATION WITH MDRRMC)':
        return 'assets/pdf/menro/MENRO_SERVICE1.pdf';
      case 'REPORT/COMPLAINT RECEIVED BY THE MENRO OFFICE RELATIVE TO ILLEGAL CUTTING OF TREES, ILLEGAL FISHING, AND OTHER VARIOUS ACTIVITIES PUNISHABLE UNDER MUNICIPAL ORDINANCES AND NATIONAL LAWS (WITH THE ASSISTANCE OF THE PNP – TUBIGON, DENR, OR BFAR).':
        return 'assets/pdf/menro/MENRO_SERVICE2.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MENRO'),
      ),
      body: ListView.builder(
        itemCount: menroCards.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.white70],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menroCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('ADMINISTRATIVE SERVICES'),
                  ],
                ),
              ),
            );
          } else {
            final pdfPath = _getPdfPath(menroCards[index]);
            return FlippingCard(
              frontText: menroCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF20B2AA), // Front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: menroCards[index].length > 50 ? 14 : 20, // Front text size
              backTextSize: 16.0, // Back text size
            );
          }
        },
      ),
    );
  }
}
