import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MswdoServicesScreen extends StatelessWidget {
  final List<String> mswdoCards = [
    'MUNICIPAL SOCIAL WELFARE & DEVELOPMENT OFFICE',
    'ADMINISTRATIVE SERVICES',
    'APPLICATION FOR A SOLO PARENT ID',
    'AVAILING THE TUBIGON DROP-IN & WOMEN CRISIS CENTER SERVICES',
    'Financial Assistance for Hospitalization and Medicines for Individuals in Crisis Situation',
    'AVAILING FOOD PACKS FOR AFFECTED FAMILIES/COMMUNITIES',
    'PRE-MARRIAGE COUNSELING',
    'GETTING PWD (MEDICINE & GROCERY) PURCHASE BOOKLETS',
    'APPLICATION FOR A PWD ID (NEW/RENEW)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL SOCIAL WELFARE & DEVELOPMENT OFFICE'),
      ),
      body: ListView.builder(
        itemCount: mswdoCards.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 150,
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
                      mswdoCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mswdoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (mswdoCards[index]) {
                  case 'APPLICATION FOR A SOLO PARENT ID':
                    pdfPath = 'assets/pdf/mswdo/MSWDO_SERVICE1.pdf';
                    break;
                  case 'AVAILING THE TUBIGON DROP-IN & WOMEN CRISIS CENTER SERVICES':
                    pdfPath = 'assets/pdf/mswdo/MSWDO_SERVICE2.pdf';
                    break;
                  case 'Financial Assistance for Hospitalization and Medicines for Individuals in Crisis Situation':
                    pdfPath = 'assets/pdf/mswdo/MSWDO_SERVICE3.pdf';
                    break;
                  case 'AVAILING FOOD PACKS FOR AFFECTED FAMILIES/COMMUNITIES':
                    pdfPath = 'assets/pdf/mswdo/MSWDO_SERVICE4.pdf';
                    break;
                  case 'PRE-MARRIAGE COUNSELING':
                    pdfPath = 'assets/pdf/mswdo/MSWDO_SERVICE5.pdf';
                    break;
                  case 'GETTING PWD (MEDICINE & GROCERY) PURCHASE BOOKLETS':
                    pdfPath = 'assets/pdf/mswdo/MSWDO_SERVICE6.pdf';
                    break;
                  case 'APPLICATION FOR A PWD ID (NEW/RENEW)':
                    pdfPath = 'assets/pdf/mswdo/MSWDO_SERVICE7.pdf';
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
                        mswdoCards[index],
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
