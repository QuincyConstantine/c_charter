import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MpdcServicesScreen extends StatelessWidget {
  final List<String> mpdcCards = [
    'MUNICIPAL PLANNING & DEVELOPMENT COORDINATOR’S OFFICE (MPDCO)',
    'ADMINISTRATIVE SERVICES',
    'SECURING MUNICIPAL STATISTICAL DATA/DOCUMENTS', //1
    'SECURING ZONING CERTIFICATE AND ZONING CERTIFICATE FOR FREE PATENT',
    'SECURING ZONING/LOCATIONAL CLEARANCE FOR BUSINESS PERMIT',
    'SECURING LOCATIONAL CLEARANCE FOR BUILDING CONSTRUCTION',
    'SECURING APPROVAL OF SUBDIVISION PLANS (SIMPLESUBDIVISION)', //5
    'SECURING PRELIMINARY SUBDIVISION DEVELOPMENT PLAN (PSDP) / PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT',
    'SECURING DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT',
    'SECURING PERMIT FOR EXTENSION OF TIME TO DEVELOP FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT',
    'SECURING CERTIFICATE OF COMPLETION FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT',
    'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: CELL SITES', //10
    'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FORSPECIAL PROJECTS / SPECIAL USES: FUNERAL ESTABLISHMENTS',
    'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: POULTRY/PIGGERY',
    'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: REFILLING GAS STATION',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL PLANNING & DEVELOPMENT COORDINATOR’S OFFICE (MPDCO)'),
      ),
      body: ListView.builder(
        itemCount: mpdcCards.length,
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
                      mpdcCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mpdcCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            double fontSize = mpdcCards[index].length > 50 ? 15 : 20; // Adjust font size based on length
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (mpdcCards[index]) {
                  case 'SECURING MUNICIPAL STATISTICAL DATA/DOCUMENTS':      //1
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE1.pdf';
                    break;
                  case 'SECURING ZONING CERTIFICATE AND ZONING CERTIFICATE FOR FREE PATENT':
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE2.pdf';
                    break;
                  case  'SECURING ZONING/LOCATIONAL CLEARANCE FOR BUSINESS PERMIT' :
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE3.pdf';
                    break;
                  case  'SECURING LOCATIONAL CLEARANCE FOR BUILDING CONSTRUCTION' :
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE4.pdf';
                    break;
                  case  'SECURING APPROVAL OF SUBDIVISION PLANS (SIMPLESUBDIVISION)' :   //5
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE5.pdf';
                    break;
                  case  'SECURING PRELIMINARY SUBDIVISION DEVELOPMENT PLAN (PSDP) / PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT' :
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE6.pdf';
                    break;
                  case  'SECURING DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT' :
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE7.pdf';
                    break;
                  case  'SECURING PERMIT FOR EXTENSION OF TIME TO DEVELOP FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT' :
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE8.pdf';
                    break;
                  case  'SECURING CERTIFICATE OF COMPLETION FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT':
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE9.pdf';
                    break;
                  case  'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: CELL SITES' :
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE10.pdf';
                    break;
                  case  'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FORSPECIAL PROJECTS / SPECIAL USES: FUNERAL ESTABLISHMENTS' : //11
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE11.pdf';
                    break;
                  case  'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: POULTRY/PIGGERY' :
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE12.pdf';
                    break;
                  case  'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: REFILLING GAS STATION':
                    pdfPath = 'assets/pdf/mpdco/MPDC_SERVICE13.pdf';
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
                    color: Color(0xFF708090),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mpdcCards[index],
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
