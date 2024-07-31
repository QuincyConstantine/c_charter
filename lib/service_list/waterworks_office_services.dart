import 'package:flutter/material.dart';
import '../../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class WaterworksOfficeServicesScreen extends StatelessWidget {
  final List<String> waterworksCards = [
    'WATERWORKS OFFICE',
    'ADMINISTRATIVE SERVICES',
    'APPLICATION OF MEMBERSHIP FOR WATER CONNECTION',
    'REPAIR and MAINTENANCE (Leaks, No water Supply, High Bill)',
    'REQUEST FOR RECONNECTION/DISCONNECTION',
    'COLLECTION OF MONTHLY WATER BILL',
  ];

  final List<String> backContents = [
    'Details about WATERWORKS OFFICE',
    'Details about ADMINISTRATIVE SERVICES',
    'To provide access to potable water supply and dedicated service of safe and adequate water within the area of operation for the benefit of its constituents as its primary concern.',
    'To provide access to potable water supply and dedicated service of safe and adequate water within the area of operation for the benefit of its constituents as its primary concern.',
    'To provide access to potable water supply and dedicated service of safe and adequate water within the area of operation for the benefit of its constituents as its primary concern.',
    'To provide access to potable water supply and dedicated service of safe and adequate water within the area of operation for the benefit of its constituents as its primary concern.',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'APPLICATION OF MEMBERSHIP FOR WATER CONNECTION':
        return 'assets/pdf/waterworks_office/WATERWORKS_SERVICE1.pdf';
      case 'REPAIR and MAINTENANCE (Leaks, No water Supply, High Bill)':
        return 'assets/pdf/waterworks_office/WATERWORKS_SERVICE2.pdf';
      case 'REQUEST FOR RECONNECTION/DISCONNECTION':
        return 'assets/pdf/waterworks_office/WATERWORKS_SERVICE3.pdf';
      case 'COLLECTION OF MONTHLY WATER BILL':
        return 'assets/pdf/waterworks_office/WATERWORKS_SERVICE4.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WATERWORKS OFFICE'),
      ),
      body: ListView.builder(
        itemCount: waterworksCards.length,
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
                      waterworksCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color set to black for contrast
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      waterworksCards[1],
                      style: TextStyle(color: Colors.black54), // Text color set to black54 for contrast
                    ),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(waterworksCards[index]);
            return FlippingCard(
              frontText: waterworksCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF008080), // Original front color (Teal)
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
