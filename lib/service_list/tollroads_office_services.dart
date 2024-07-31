import 'package:flutter/material.dart';
import '../../flipping_card.dart'; // Import the FlippingCard widget
import '../../pdf_display.dart'; // Import the PdfViewerScreen

class TollroadsOfficeServicesScreen extends StatelessWidget {
  final List<String> tollroadsCards = [
    'TOLL ROADS OFFICE',
    'ADMINISTRATIVE SERVICES',
    'COLLECTION OF FEES & STALL RENTAL',
  ];

  final List<String> backContents = [
    'Details about TOLL ROADS OFFICE',
    'Details about ADMINISTRATIVE SERVICES',
  'COLLECTION OF FEES & STALL RENTALAny person who will engage in various services below, to wit;\n- PARKING FEES (vehicles 4 wheelers up)\n- PARKING FEES (motorized tricycle for hire) \n- COMFORT ROOM FEES \n- RENTAL FEE ON GOVERNMENT OWNED BUILDING/LOT',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'COLLECTION OF FEES & STALL RENTAL':
        return 'assets/pdf/tollroads_office/TOLLROADS_SERVICE.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TOLL ROADS OFFICE'),
      ),
      body: ListView.builder(
        itemCount: tollroadsCards.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color set to white
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tollroadsCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color set to black for contrast
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      tollroadsCards[1],
                      style: TextStyle(color: Colors.black54), // Text color set to black54 for contrast
                    ),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(tollroadsCards[index]);
            return FlippingCard(
              frontText: tollroadsCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF808080), // Original front color
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
