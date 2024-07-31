import 'package:flutter/material.dart';
import '../../flipping_card.dart'; // Import the FlippingCard widget
import '../../pdf_display.dart'; // Import the PdfViewerScreen

class StacOfficeServicesScreen extends StatelessWidget {
  final List<String> stacCards = [
    'STIMULATION AND THERAPEUTIC ACTIVITY CENTER (STAC)',
    'ADMINISTRATIVE SERVICES',
    'SERVES AS AN INFORMAL VENUE FOR SOCIALIZATION FOR CWDS OF THE FOLLOWING SERVES',
  ];

  final List<String> backContents = [
    'Details about STIMULATION AND THERAPEUTIC ACTIVITY CENTER (STAC)',
    'Details about ADMINISTRATIVE SERVICES',
    'The Stimulation and Therapeutic Activity Center is where Breaking Barriers for Children provides free comprehensive rehabilitation services to children with disabilities in Tubigon',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'SERVES AS AN INFORMAL VENUE FOR SOCIALIZATION FOR CWDS OF THE FOLLOWING SERVES':
        return 'assets/pdf/stac_office/STAC_SERVICE.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STIMULATION AND THERAPEUTIC ACTIVITY CENTER (STAC)'),
      ),
      body: ListView.builder(
        itemCount: stacCards.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 150,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color set to white
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stacCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color set to black for contrast
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      stacCards[1],
                      style: TextStyle(color: Colors.black54), // Text color set to black54 for contrast
                    ),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(stacCards[index]);
            return FlippingCard(
              frontText: stacCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF20B2AA), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: 20, // Front text size
              backTextSize: 16.0, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
