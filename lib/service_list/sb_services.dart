import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class SbServicesScreen extends StatelessWidget {
  final List<String> sbCards = [
    'SECRETARY TO THE SB',
    'ADMINISTRATIVE SERVICES',
    'ABOUT THE SERVICE'
  ];

  final List<String> backContents = [
    'Details about Secretary to the SB',
    'Details about Administrative Services',
    'ABOUT THE SERVICE: The PUBLIC may request for certified true copies of Municipal Council Documents such as resolutions, ordinances, minutes of the sessions and other official issuances of the Office of the Sangguniang Bayan, through the Office of the Secretary to the Sangguniang Bayan and NGOs and Pos may inquire for the requirements for the accreditation.',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'ABOUT THE SERVICE':
        return 'assets/pdf/secretary_sb/SB_SERVICE.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secretary to the SB'),
      ),
      body: ListView.builder(
        itemCount: sbCards.length,
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
                      sbCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(sbCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(sbCards[index]);
            return FlippingCard(
              frontText: sbCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFFDC143C), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: 20, // Front text size
              backTextSize: 14.0, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
