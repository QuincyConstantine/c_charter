import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MayorsOfficeServicesScreen extends StatelessWidget {
  final List<String> mayorCards = [
    'MAYOR’S OFFICE',
    'ADMINISTRATIVE SERVICES',
    'SECURING MAYOR’S CLEARANCE & CERTIFICATE OF GOOD MORAL CHARACTER',
    'SECURING PERMIT ON ALL ADVERTISING / PROMOTIONAL ACTIVITIES',
    'SECURING PERMIT TO CONDUCT PUBLIC ASSEMBLY, RALLIES AND DEMONSTRATIONS, PARADES, MOTORCADE, RECOREDA, CAROLLING, DISCO, BENEFIT DANCE, CONCERTS, FUND RAISING, RAFFLE DRAWS, ETC.',
    'AVAILING OF PUBLIC ASSISTANCE',
    'SECURING AFFIDAVITS',
    'ISSUANCE OF BURIAL PERMIT',
    'ISSUANCE OF MAYOR’S PERMIT',
    'SECURING FINANCIAL ASSISTANCE'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mayor\'s Office'),
      ),
      body: ListView.builder(
        itemCount: mayorCards.length,
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
                      mayorCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mayorCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            double fontSize = mayorCards[index].length > 50 ? 15 : 20; // Adjust font size based on length
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (mayorCards[index]) {
                  case 'SECURING MAYOR’S CLEARANCE & CERTIFICATE OF GOOD MORAL CHARACTER':
                    pdfPath = 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE1.pdf';
                    break;
                  case 'SECURING PERMIT ON ALL ADVERTISING / PROMOTIONAL ACTIVITIES':
                    pdfPath = 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE2.pdf';
                    break;
                  case 'SECURING PERMIT TO CONDUCT PUBLIC ASSEMBLY, RALLIES AND DEMONSTRATIONS, PARADES, MOTORCADE, RECOREDA, CAROLLING, DISCO, BENEFIT DANCE, CONCERTS, FUND RAISING, RAFFLE DRAWS, ETC.':
                    pdfPath = 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE3.pdf';
                    break;
                  case 'AVAILING OF PUBLIC ASSISTANCE':
                    pdfPath = 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE4.pdf';
                    break;
                  case 'SECURING AFFIDAVITS':
                    pdfPath = 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE5.pdf';
                    break;
                  case 'ISSUANCE OF BURIAL PERMIT':
                    pdfPath = 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE6.pdf';
                    break;
                  case 'ISSUANCE OF MAYOR’S PERMIT':
                    pdfPath = 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE7.pdf';
                    break;
                  case 'SECURING FINANCIAL ASSISTANCE':
                    pdfPath = 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE8.pdf';
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
                    color: Color(0xFF6A0DAD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mayorCards[index],
                        style: TextStyle(
                          fontSize: fontSize, // Use conditional font size
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
