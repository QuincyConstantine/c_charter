import 'package:flutter/material.dart';
import '../../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

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

  final List<String> backContents = [
    'Details about TUBIGON COMMUNITY HOSPITAL',
    'Details about ADMINISTRATIVE SERVICES',
    'Details about SECURING A BIRTH CERTIFICATE/DEATH CERTIFICATE',
    'Details about SECURING A MEDICAL RECORD',
    'Details about SECURING A RECORD FOR MEDICO LEGAL',
    'Details about AVAILING OF OUTPATIENT CONSULTATION',
    'Details about AVAILING DENTAL SERVICES',
    'Details about AVAILING LABORATORY EXAMINATION',
    'Details about AVAILING ADMISSION and DISCHARGE',
    'Details about AVAILING OF AMBULANCE SERVICES',
    'Details about AVAILING OF DELIVERY SERVICES',
    'Details about AVAILING OF PROCEDURES AND TREATMENT OF MINOR MEDICAL CASES AND EMERGENCIES',
    'Details about [1]AVAILING OF X-RAY SERVICES',
    'Details about [2]AVAILING OF X-RAY SERVICES',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'SECURING A BIRTH CERTIFICATE/DEATH CERTIFICATE':
        return 'assets/pdf/tch_office/TCH_SERVICE1.pdf';
      case 'SECURING A MEDICAL RECORD':
        return 'assets/pdf/tch_office/TCH_SERVICE2.pdf';
      case 'SECURING A RECORD FOR MEDICO LEGAL':
        return 'assets/pdf/tch_office/TCH_SERVICE3.pdf';
      case 'AVAILING OF OUTPATIENT CONSULTATION':
        return 'assets/pdf/tch_office/TCH_SERVICE4.pdf';
      case 'AVAILING DENTAL SERVICES':
        return 'assets/pdf/tch_office/TCH_SERVICE5.pdf';
      case 'AVAILING LABORATORY EXAMINATION':
        return 'assets/pdf/tch_office/TCH_SERVICE6.pdf';
      case 'AVAILING ADMISSION and DISCHARGE':
        return 'assets/pdf/tch_office/TCH_SERVICE7.pdf';
      case 'AVAILING OF AMBULANCE SERVICES':
        return 'assets/pdf/tch_office/TCH_SERVICE8.pdf';
      case 'AVAILING OF DELIVERY SERVICES':
        return 'assets/pdf/tch_office/TCH_SERVICE9.pdf';
      case 'AVAILING OF PROCEDURES AND TREATMENT OF MINOR MEDICAL CASES AND EMERGENCIES':
        return 'assets/pdf/tch_office/TCH_SERVICE10.pdf';
      case '[1]AVAILING OF X-RAY SERVICES':
        return 'assets/pdf/tch_office/TCH_SERVICE11.pdf';
      case '[2]AVAILING OF X-RAY SERVICES':
        return 'assets/pdf/tch_office/TCH_SERVICE12.pdf';
      default:
        return '';
    }
  }

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
            final pdfPath = _getPdfPath(tchCards[index]);
            return FlippingCard(
              frontText: tchCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFFDC143C), // Original front color (Crimson)
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: 20, // Front text size
              backTextSize: 16.0, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
