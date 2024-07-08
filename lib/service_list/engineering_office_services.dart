import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class EngineeringOfficeServicesScreen extends StatelessWidget {
  final List<String> engineeringCards = [
    'ENGINEERING OFFICE',
    'ADMINISTRATIVE SERVICES',
    'SECURING BUILDING PERMIT',
    'SECURING OCCUPANCY PERMIT',
    'REQUEST THE PREPARATION OF PLAN AND PROGRAM OF WORKS',
    'REQUEST STREETLIGHT MAINTENANCE',
    'REQUEST DRAINAGE MAINTENANCE'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ENGINEERING OFFICE'),
      ),
      body: ListView.builder(
        itemCount: engineeringCards.length,
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
                      engineeringCards[index],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(engineeringCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (engineeringCards[index]) {
                  case 'SECURING BUILDING PERMIT':
                    pdfPath = 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE1.pdf';
                    break;
                  case 'SECURING OCCUPANCY PERMIT':
                    pdfPath = 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE2.pdf';
                    break;
                  case 'REQUEST THE PREPARATION OF PLAN AND PROGRAM OF WORKS':
                    pdfPath = 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE3.pdf';
                    break;
                  case 'REQUEST STREETLIGHT MAINTENANCE':
                    pdfPath = 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE4.pdf';
                    break;
                  case 'REQUEST DRAINAGE MAINTENANCE':
                    pdfPath = 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE5.pdf';
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
                  height: 150,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF000080),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        engineeringCards[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Click to view details',
                        style: TextStyle(color: Colors.white70),
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
