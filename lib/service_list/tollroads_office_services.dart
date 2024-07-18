import 'package:flutter/material.dart';
import '../../pdf_display.dart'; // Import the PdfViewerScreen

class TollroadsOfficeServicesScreen extends StatelessWidget {
  final List<String> tollroadsCards = [
    'TOLL ROADS OFFICE',
    'ADMINISTRATIVE SERVICES',
    'COLLECTION OF FEES & STALL RENTAL',

  ];

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
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (tollroadsCards[index]) {
                  case 'COLLECTION OF FEES & STALL RENTAL':
                    pdfPath = 'assets/pdf/tollroads_office/TOLLROADS_SERVICE.pdf';
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
                    color: Color(0xFF808080), // Background color set to navy blue (hex: #000080)
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
