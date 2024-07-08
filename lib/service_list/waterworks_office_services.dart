import 'package:flutter/material.dart';
import '../../pdf_display.dart'; // Import the PdfViewerScreen

class WaterworksOfficeServicesScreen extends StatelessWidget {
  final List<String> waterworksCards = [
    'WATERWORKS OFFICE',
    'ADMINISTRATIVE SERVICES',
    'APPLICATION OF MEMBERSHIP FOR WATER CONNECTION',
    'REPAIR and MAINTENANCE (Leaks, No water Supply, High Bill)',
    'REQUEST FOR RECONNECTION/DISCONNECTION',
    'COLLECTION OF MONTHLY WATER BILL',

  ];

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
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (waterworksCards[index]) {
                  case 'APPLICATION OF MEMBERSHIP FOR WATER CONNECTION':
                    pdfPath = 'assets/pdf/waterworks_office/WATERWORKS_SERVICE1.pdf';
                    break;
                  case 'REPAIR and MAINTENANCE (Leaks, No water Supply, High Bill)':
                    pdfPath = 'assets/pdf/waterworks_office/WATERWORKS_SERVICE2.pdf';
                    break;
                  case 'REQUEST FOR RECONNECTION/DISCONNECTION':
                    pdfPath = 'assets/pdf/waterworks_office/WATERWORKS_SERVICE3.pdf';
                    break;
                  case 'COLLECTION OF MONTHLY WATER BILL':
                    pdfPath = 'assets/pdf/waterworks_office/WATERWORKS_SERVICE4.pdf';
                    break;
                  default:
                    pdfPath = '';
                }

                if (pdfPath.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPdfViewer(
                        pdfPath: pdfPath,
                      ),
                    ),
                  );
                } else {
                  // Define your navigation logic here for other service cards if needed
                }
              },
              child: Card(
                margin: EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF000080), // Background color set to navy blue (hex: #000080)
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
                          color: Colors.white, // Text color set to white for contrast
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Click to view details',
                        style: TextStyle(color: Colors.white70), // Text color set to white70 for contrast
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
