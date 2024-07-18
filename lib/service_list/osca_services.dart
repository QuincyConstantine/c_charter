import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class OscaServicesScreen extends StatelessWidget {
  final List<String> oscaCards = [
    'OFFICE OF SENIOR CITIZENS AFFAIRS(OSCA)',
    'ADMINISTRATIVE SERVICES',
    'RECEIVING COMPLAINTS FOR NOT GRANTING DISCOUNTS',
    'ISSUANCE OF OSCA ID',
    'GRANTING OF BURIAL ASSISTANCE',
    'ISSUANCE OF PURCHASE BOOKLETS',
    'ISSUANCE OF MEMBER DATA RECORD (MDR)',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OFFICE OF SENIOR CITIZENS AFFAIRS(OSCA)'),
      ),
      body: ListView.builder(
        itemCount: oscaCards.length,
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
                      oscaCards[index],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(oscaCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (oscaCards[index]) {
                  case 'RECEIVING COMPLAINTS FOR NOT GRANTING DISCOUNTS':
                    pdfPath = 'assets/pdf/osca/OSCA_SERVICE1.pdf';
                    break;
                  case 'ISSUANCE OF OSCA ID':
                    pdfPath = 'assets/pdf/osca/OSCA_SERVICE2.pdf';
                    break;
                  case  'GRANTING OF BURIAL ASSISTANCE' :
                    pdfPath = 'assets/pdf/osca/OSCA_SERVICE3.pdf';
                    break;
                  case  'ISSUANCE OF PURCHASE BOOKLETS' :
                    pdfPath = 'assets/pdf/osca/OSCA_SERVICE3.pdf';
                    break;
                  case  'ISSUANCE OF MEMBER DATA RECORD (MDR)' :
                    pdfPath = 'assets/pdf/osca/OSCA_SERVICE3.pdf';
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
                    color: Color(0xFFB76E79), // Background color set to navy blue (hex: #000080)
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        oscaCards[index],
                        style: TextStyle(
                          fontSize: 25,
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
