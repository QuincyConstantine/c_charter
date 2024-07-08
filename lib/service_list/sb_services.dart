import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class SbServicesScreen extends StatelessWidget {
  final List<String> sbCards = [
    'SECRETARY TO THE SB',
    'ADMINISTRATIVE SERVICES',
    'ABOUT THE SERVICE'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secretary to the SB'),
      ),
      body: ListView.builder(
        itemCount: sbCards.length,
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
                      sbCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(sbCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (sbCards[index]) {
                  case 'ABOUT THE SERVICE':
                    pdfPath = 'assets/pdf/secretary_sb/SB_SERVICE.pdf';
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
                    color: Color(0xFF000080),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sbCards[index],
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
