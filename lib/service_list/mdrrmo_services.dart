import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MdrrmoServicesScreen extends StatelessWidget {
  final List<String> mdrrmoCards = [
    'ACCOUNTING OFFICE',
    'ADMINISTRATIVE SERVICES',
    'CALAMITY RESPONSE',
    'REQUEST FOR HAZARD CERTIFICATION (HAZARDOUS TREE)',
    'HOSPITAL TRANSFER',
    'EMERGENCY SITUATION RESPONSE',
    'REQUEST FOR EQUIPMENT ASSISTANCE',
    'REQUEST FOR INFORMATION AND EDUCATION MATERIALS',
    'REQUEST FOR MULTI HAZARD MAPS'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MDRRMO Office'),
      ),
      body: ListView.builder(
        itemCount: mdrrmoCards.length,
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
                      mdrrmoCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mdrrmoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (mdrrmoCards[index]) {
                  case 'CALAMITY RESPONSE':
                    pdfPath = 'assets/pdf/mdrrmo/MDRRMO_SERVICE1.pdf';
                    break;
                  case 'REQUEST FOR HAZARD CERTIFICATION (HAZARDOUS TREE)':
                    pdfPath = 'assets/pdf/mdrrmo/MDRRMO_SERVICE2.pdf';
                    break;
                  case 'HOSPITAL TRANSFER':
                    pdfPath = 'assets/pdf/mdrrmo/MDRRMO_SERVICE3.pdf';
                    break;
                  case 'EMERGENCY SITUATION RESPONSE':
                    pdfPath = 'assets/pdf/mdrrmo/MDRRMO_SERVICE4.pdf';
                    break;
                  case 'REQUEST FOR EQUIPMENT ASSISTANCE':
                    pdfPath = 'assets/pdf/mdrrmo/MDRRMO_SERVICE5.pdf';
                    break;
                  case 'REQUEST FOR INFORMATION AND EDUCATION MATERIALS':
                    pdfPath = 'assets/pdf/mdrrmo/MDRRMO_SERVICE6.pdf';
                    break;
                  case 'REQUEST FOR MULTI HAZARD MAPS':
                    pdfPath = 'assets/pdf/mdrrmo/MDRRMO_SERVICE7.pdf';
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
                    color: Color(0xFFF28500),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mdrrmoCards[index],
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
