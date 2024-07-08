import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class BploServicesScreen extends StatelessWidget {
  final List<String> bploCards = [
    'BUSINESS PERMIT & LICENSING OFFICE (BPLO)',
    'ADMINISTRATIVE SERVICES',
    'SECURING MAYOR’S PERMIT TO VARIOUS ACTIVITIES',
    'SECURING PERMIT ON ALL ADVERTISING / PROMOTIONAL ACTIVITIES',
    'SECURING / RENEWING MAYOR’S PERMIT / BUSINESS PERMIT',
    'SECURING / RENEWING MAYOR’S PERMIT FOR TRICYCLES,TRISIKADS, MULTI-CABS , V- HIRE AND BUSES',
    'ISSUANCE OF FISHERY PERMIT',
    'RETIRING A BUSINESS OPERATION/ CERTIFICATION OF “NO BUSINESS PERMIT RECORD" ',
    'AMENDMENTS IN THE BUSINESS PERMIT',
    'RENEWAL OF CONTRACT OF LEASE',
    'SECURING A BURIAL PERMIT',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BUSINES PERMITS & LICENSING OFFICE (BPLO)'),
      ),
      body: ListView.builder(
        itemCount: bploCards.length,
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
                      bploCards[index],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(bploCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (bploCards[index]) {
                  case 'SECURING MAYOR’S PERMIT TO VARIOUS ACTIVITIES':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE1.pdf';
                    break;
                  case 'SECURING PERMIT ON ALL ADVERTISING / PROMOTIONAL ACTIVITIES':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE2.pdf';
                    break;
                  case 'SECURING / RENEWING MAYOR’S PERMIT / BUSINESS PERMIT':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE3.pdf';
                    break;
                  case 'SECURING / RENEWING MAYOR’S PERMIT FOR TRICYCLES,TRISIKADS, MULTI-CABS , V- HIRE AND BUSES':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE4.pdf';
                    break;
                  case 'ISSUANCE OF FISHERY PERMIT':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE5.pdf';
                    break;
                  case 'RETIRING A BUSINESS OPERATION/ CERTIFICATION OF “NO BUSINESS PERMIT RECORD" ':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE6.pdf';
                    break;
                  case 'AMENDMENTS IN THE BUSINESS PERMIT':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE7.pdf';
                    break;
                  case 'RENEWAL OF CONTRACT OF LEASE':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE8.pdf';
                    break;
                  case 'SECURING A BURIAL PERMIT':
                    pdfPath = 'assets/pdf/bplo/BPLO_SERVICE9.pdf';
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
                        bploCards[index],
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
