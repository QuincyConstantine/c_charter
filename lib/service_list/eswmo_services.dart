import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class EswmoServicesScreen extends StatelessWidget {
  final List<String> eswmoCards = [
    'ECOLOGICAL SOLID WASTE MANAGEMENT OFFICE (ESWMO)',
    'ADMINISTRATIVE SERVICES',
    'AVAILING OF GARBAGE COLLECTION',
    'GARBAGE COLLECTION FEE FOR HOUSEHOLDS/BUSINESS ESTABLISHMENTS (PAYING CLIENT)',
    'REPORT/COMPLAINT RECEIVED BY THE MESWM OFFICE (THRU LIT PERSONNEL) AND RELATIVE TO VARIOUS ACTIVITIES PUNISHABLE UNDER ESWM MUNICIPAL ORDINANCES AND NATIONAL LAWS (WITH THE ASSISTANCE OF THE PNP – TUBIGON AND BARANGAY OFFICIALS)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eswmo Office'),
      ),
      body: ListView.builder(
        itemCount: eswmoCards.length,
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
                      eswmoCards[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(eswmoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            double fontSize = eswmoCards[index].length > 50 ? 14 : 20; // Adjust font size based on length
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (eswmoCards[index]) {
                  case 'AVAILING OF GARBAGE COLLECTION':
                    pdfPath = 'assets/pdf/eswmo/ESWMO_SERVICE1.pdf';
                    break;
                  case 'GARBAGE COLLECTION FEE FOR HOUSEHOLDS/BUSINESS ESTABLISHMENTS (PAYING CLIENT)':
                    pdfPath = 'assets/pdf/eswmo/ESWMO_SERVICE2.pdf';
                    break;
                  case 'REPORT/COMPLAINT RECEIVED BY THE MESWM OFFICE (THRU LIT PERSONNEL) AND RELATIVE TO VARIOUS ACTIVITIES PUNISHABLE UNDER ESWM MUNICIPAL ORDINANCES AND NATIONAL LAWS (WITH THE ASSISTANCE OF THE PNP – TUBIGON AND BARANGAY OFFICIALS)':
                    pdfPath = 'assets/pdf/eswmo/ESWMO_SERVICE3.pdf';
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
                    color: Color(0xFF8B4513), // Background color set to "000080"
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        eswmoCards[index],
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
