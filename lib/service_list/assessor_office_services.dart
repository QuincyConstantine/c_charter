import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class AssessorOfficeServicesScreen extends StatelessWidget {
  final List<String> assessorCards = [
    'ACCOUNTING OFFICE',
    'ADMINISTRATIVE SERVICES',
    'ISSUANCE OF CERTIFIED TRUE COPIES OF TAX DECLARATIONS',
    'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR NEW DISCOVERIES OF LAND',
    'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR NEW BUILDING AND MACHINERY',
    'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR TRANSFER OF OWNERSHIP OF UNTITLED PROPERTY',
    'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR TRANSFER OF OWNERSHIP OF TITLED PROPERTY',
    'REQUEST FOR THE REVISION OF OLD TAX DECLARATION',
    'REQUEST FOR THE ISSUANCE OF CERTIFICATION OF LANDHOLDING/NO LANDHOLDINGS',
    'REQUEST FOR THE ISSUANCE OF SKETCH PLAN PER APPROVED CADASTRAL SURVEY OR VICINITY MAP',
    'REQUEST FOR THE ISSUANCE OF CERTIFICATION OF IMPROVEMENT/NO IMPROVEMENT',
    'REQUEST FOR CANCELLATION OF TAX DECLARATION BECAUSE IT IS NO LONGER EXISTING AND DUE TO DESTRUCTION',
    'REQUEST FOR CANCELLATION OF TAX DECLARATION DUE TO COURT DECISION',
    'REQUEST FOR CANCELLATION OF TAX DECLARATION DUE TO DUPLICATIONS',
    'REQUEST FOR SUBDIVISION/CONSOLIDATION OF TITLED PROPERTIES',
    'REQUEST FOR SUBDIVISION/CONSOLIDATION OF UNTITLED PROPERTIES',
    'REQUEST FOR SUBDIVISION/CONSOLIDATION OF PROPERTY UNDER CARP/OLT/CLOA',
    'REQUEST FOR SUBDIVISION/CONSOLIDATION OF PROPERTY WITH P468 (WATERSHED/RESERVE AREA)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assessor\'s Office'),
      ),
      body: ListView.builder(
        itemCount: assessorCards.length,
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
                      assessorCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(assessorCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (assessorCards[index]) {
                  case 'ISSUANCE OF CERTIFIED TRUE COPIES OF TAX DECLARATIONS':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE1.pdf';
                    break;
                  case 'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR NEW DISCOVERIES OF LAND':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE2.pdf';
                    break;
                  case 'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR NEW BUILDING AND MACHINERY':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE3.pdf';
                    break;
                  case 'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR TRANSFER OF OWNERSHIP OF UNTITLED PROPERTY':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE4.pdf';
                    break;
                  case 'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR TRANSFER OF OWNERSHIP OF TITLED PROPERTY':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE5.pdf';
                    break;
                  case 'REQUEST FOR THE REVISION OF OLD TAX DECLARATION':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE6.pdf';
                    break;
                  case 'REQUEST FOR THE ISSUANCE OF CERTIFICATION OF LANDHOLDING/NO LANDHOLDINGS':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE7.pdf';
                    break;
                  case 'REQUEST FOR THE ISSUANCE OF SKETCH PLAN PER APPROVED CADASTRAL SURVEY OR VICINITY MAP':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE8.pdf';
                    break;
                  case 'REQUEST FOR THE ISSUANCE OF CERTIFICATION OF IMPROVEMENT/NO IMPROVEMENT':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE9.pdf';
                    break;
                  case 'REQUEST FOR CANCELLATION OF TAX DECLARATION BECAUSE IT IS NO LONGER EXISTING AND DUE TO DESTRUCTION':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE10.pdf';
                    break;
                  case 'REQUEST FOR CANCELLATION OF TAX DECLARATION DUE TO COURT DECISION':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE11.pdf';
                    break;
                  case 'REQUEST FOR CANCELLATION OF TAX DECLARATION DUE TO DUPLICATIONS':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE12.pdf';
                    break;
                  case 'REQUEST FOR SUBDIVISION/CONSOLIDATION OF TITLED PROPERTIES':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE13.pdf';
                    break;
                  case 'REQUEST FOR SUBDIVISION/CONSOLIDATION OF UNTITLED PROPERTIES':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE14.pdf';
                    break;
                  case 'REQUEST FOR SUBDIVISION/CONSOLIDATION OF PROPERTY UNDER CARP/OLT/CLOA':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE15.pdf';
                    break;
                  case 'REQUEST FOR SUBDIVISION/CONSOLIDATION OF PROPERTY WITH P468 (WATERSHED/RESERVE AREA)':
                    pdfPath = 'assets/pdf/assessor_office/ASSESSOR_SERVICE16.pdf';
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
                    color: Color(0xFF191970),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        assessorCards[index],
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
