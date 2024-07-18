import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MenroServicesScreen extends StatelessWidget {
  final List<String> menroCards = [
    'MENRO',
    'ADMINISTRATIVE SERVICES',
    'REQUEST FOR PRE-INSPECTION TO CUT TREES (IN COORDINATION WITH MDRRMC)',
    'REPORT/COMPLAINT RECEIVED BY THE MENRO OFFICE RELATIVE TO ILLEGAL CUTTING OF TREES, ILLEGAL FISHING, AND OTHER VARIOUS ACTIVITIES PUNISHABLE UNDER MUNICIPAL ORDINANCES AND NATIONAL LAWS (WITH THE ASSISTANCE OF THE PNP – TUBIGON, DENR, OR BFAR).'
  ];

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
                    Text(menroCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            double fontSize = menroCards[index].length > 50 ? 13 : 20;
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (menroCards[index]) {
                  case 'REQUEST FOR PRE-INSPECTION TO CUT TREES (IN COORDINATION WITH MDRRMC)':
                    pdfPath = 'assets/pdf/menro/MENRO_SERVICE1.pdf';
                    break;
                  case 'REPORT/COMPLAINT RECEIVED BY THE MENRO OFFICE RELATIVE TO ILLEGAL CUTTING OF TREES, ILLEGAL FISHING, AND OTHER VARIOUS ACTIVITIES PUNISHABLE UNDER MUNICIPAL ORDINANCES AND NATIONAL LAWS (WITH THE ASSISTANCE OF THE PNP – TUBIGON, DENR, OR BFAR).':
                    pdfPath = 'assets/pdf/menro/MENRO_SERVICE2.pdf';
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
                    color: Color(0xFF20B2AA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        menroCards[index],
                        style: TextStyle(
                          fontSize: 14,
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
