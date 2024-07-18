import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class HealthOfficeServicesScreen extends StatelessWidget {
  final List<String> healthCards = [
    'MUNICIPAL HEALTH OFFICE',
    'ADMINISTRATIVE SERVICES',
    'AVAILING OF OUTPATIENT CONSULTATION',
    'AVAILING OF IMMUNIZATION SERVICES (BCG)',
    'AVAILING OF FAMILY PLANNING SERVICES',
    'AVAILING OF LABORATORY EXAMINATIONS',
    'AVAILING OF ANTI-TUBERCULOSIS DRUGS',
    'AVAILING OF MATERNAL HEALTH SERVICES',
    'AVAILING OF LEPROSY EXAMINATION/TREATMENT',
    'AVAILING OF ANIMAL BITE TREATMENT',
    'AVAILING OF COUNSELING ON NUTRITION',
    'PROVIDE PRENATAL EXAMINATION',
    'ISSUANCE OF HEALTH RELATED CERTIFICATIONS',
    'SECURING A HEALTH CERTIFICATE/CARD/PERMIT',
    'FILLING OF SANITATION NUISANCE AND COMPLAINT'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Municipal Health Office'),
      ),
      body: ListView.builder(
        itemCount: healthCards.length,
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
                      healthCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(healthCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (healthCards[index]) {
                  case 'AVAILING OF OUTPATIENT CONSULTATION':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE1.pdf';
                    break;
                  case 'AVAILING OF IMMUNIZATION SERVICES (BCG)':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE2.pdf';
                    break;
                  case 'AVAILING OF FAMILY PLANNING SERVICES':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE3.pdf';
                    break;
                  case 'AVAILING OF LABORATORY EXAMINATIONS':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE4.pdf';
                    break;
                  case 'AVAILING OF ANTI-TUBERCULOSIS DRUGS':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE5.pdf';
                    break;
                  case 'AVAILING OF MATERNAL HEALTH SERVICES':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE6.pdf';
                    break;
                  case 'AVAILING OF LEPROSY EXAMINATION/TREATMENT':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE7.pdf';
                    break;
                  case 'AVAILING OF ANIMAL BITE TREATMENT':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE8.pdf';
                    break;
                  case 'AVAILING OF COUNSELING ON NUTRITION':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE9.pdf';
                    break;
                  case 'PROVIDE PRENATAL EXAMINATION':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE10.pdf';
                    break;
                  case 'ISSUANCE OF HEALTH RELATED CERTIFICATIONS':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE11.pdf';
                    break;
                  case 'SECURING A HEALTH CERTIFICATE/CARD/PERMIT':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE12.pdf';
                    break;
                  case 'FILLING OF SANITATION NUISANCE AND COMPLAINT':
                    pdfPath = 'assets/pdf/health_office/MHO_SERVICE13.pdf';
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
                    color: Color(0xFF87CEEB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        healthCards[index],
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
