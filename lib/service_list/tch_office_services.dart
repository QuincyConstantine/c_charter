import 'package:flutter/material.dart';
import '../../pdf_display.dart'; // Import the PdfViewerScreen

class TchOfficeServicesScreen extends StatelessWidget {
  final List<String> tchCards = [
    'TUBIGON COMMUNITY HOSPITAL',
    'ADMINISTRATIVE SERVICES',
    'SECURING A BIRTH CERTIFICATE/DEATH CERTIFICATE',
    'SECURING A MEDICAL RECORD',
    'SECURING A RECORD FOR MEDICO LEGAL',
    'AVAILING OF OUTPATIENT CONSULTATION',
    'AVAILING DENTAL SERVICES',
    'AVAILING LABORATORY EXAMINATION',
    'AVAILING ADMISSION and DISCHARGE',
    'AVAILING OF AMBULANCE SERVICES',
    'AVAILING OF DELIVERY SERVICES',
    'AVAILING OF PROCEDURES AND TREATMENT OF MINOR MEDICAL CASES AND EMERGENCIES',
    '[1]AVAILING OF X-RAY SERVICES',
    '[2]AVAILING OF X-RAY SERVICES',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TUBIGON COMMUNITY HOSPITAL'),
      ),
      body: ListView.builder(
        itemCount: tchCards.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color set to white
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tchCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color set to black for contrast
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      tchCards[1],
                      style: TextStyle(color: Colors.black54), // Text color set to black54 for contrast
                    ),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (tchCards[index]) {
                  case 'SECURING A BIRTH CERTIFICATE/DEATH CERTIFICATE':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE1.pdf';
                    break;
                  case 'SECURING A MEDICAL RECORD':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE2.pdf';
                    break;
                  case 'SECURING A RECORD FOR MEDICO LEGAL':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE3.pdf';
                    break;
                  case 'AVAILING OF OUTPATIENT CONSULTATION':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE4.pdf';
                    break;
                  case 'AVAILING DENTAL SERVICES':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE5.pdf';
                    break;
                  case 'AVAILING LABORATORY EXAMINATION':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE6.pdf';
                    break;
                  case 'AVAILING ADMISSION and DISCHARGE':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE7.pdf';
                    break;
                  case 'AVAILING OF AMBULANCE SERVICES':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE8.pdf';
                    break;
                  case 'AVAILING OF DELIVERY SERVICES':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE9.pdf';
                    break;
                  case 'AVAILING OF PROCEDURES AND TREATMENT OF MINOR MEDICAL CASES AND EMERGENCIES':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE10.pdf';
                    break;
                  case '[1]AVAILING OF X-RAY SERVICES':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE11.pdf';
                    break;
                  case '[2]AVAILING OF X-RAY SERVICES':
                    pdfPath = 'assets/pdf/tch_office/TCH_SERVICE12.pdf';
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
                    color: Color(0xFFDC143C), // Background color set to navy blue (hex: #000080)
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tchCards[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Text color set to white for contrast
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Click to view details',
                        style: TextStyle(color: Colors.white70), // Text color set to white70 for contrast
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
