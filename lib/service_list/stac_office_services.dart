import 'package:flutter/material.dart';
import '../../pdf_display.dart'; // Import the PdfViewerScreen

class StacOfficeServicesScreen extends StatelessWidget {
  final List<String> stacCards = [
    'STIMULATION AND THERAPEUTIC ACTIVITYCENTER (STAC)',
    'ADMINISTRATIVE SERVICES',
    'SERVES AS AN INFORMAL VENUE FOR SOCIALIZATION FOR CWDS OF THE FOLLOWING SERVES',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STIMULATION AND THERAPEUTIC ACTIVITYCENTER (STAC)'),
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
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (stacCards[index]) {
                  case 'SERVES AS AN INFORMAL VENUE FOR SOCIALIZATION FOR CWDS OF THE FOLLOWING SERVES':
                    pdfPath = 'assets/pdf/stac_office/STAC_SERVICE.pdf';
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
                        stacCards[index],
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
