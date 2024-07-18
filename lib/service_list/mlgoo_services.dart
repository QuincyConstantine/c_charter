import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MlgooServicesScreen extends StatelessWidget {
  final List<String> mlgooCards = [
    'MUNICIPAL LOCAL GOVERNMENT OPERATIONS OFFICE (MLGOO)',
    'ADMINISTRATIVE SERVICES',
    'PROCESSING OF BARANGAY OFFICIAL’S DEATH BENEFIT ASSISTANCE',
    'ISSUANCE OF CERTIFICATE OF INCUMBENCY (BRGY. & MUNICIPAL)',
    'PROCESSING OF AUTHORITY TO PURCHASE VEHICLE'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL LOCAL GOVERNMENT OPERATIONS OFFICE (MLGOO)'),
      ),
      body: ListView.builder(
        itemCount: mlgooCards.length,
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
                      mlgooCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mlgooCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (mlgooCards[index]) {
                  case 'PROCESSING OF BARANGAY OFFICIAL’S DEATH BENEFIT ASSISTANCE':
                    pdfPath = 'assets/pdf/mlgoo/MLGOO_SERVICE1.pdf';
                    break;
                  case 'ISSUANCE OF CERTIFICATE OF INCUMBENCY (BRGY. & MUNICIPAL)':
                    pdfPath = 'assets/pdf/mlgoo/MLGOO_SERVICE2.pdf';
                    break;
                  case  'PROCESSING OF AUTHORITY TO PURCHASE VEHICLE' :
                    pdfPath = 'assets/pdf/mlgoo/MLGOO_SERVICE3.pdf';
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
                        mlgooCards[index],
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
