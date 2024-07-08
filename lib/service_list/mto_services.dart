import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MtoServicesScreen extends StatelessWidget {
  final List<String> mtoCards = [
    'MUNICIPAL TREASURER’S OFFICE',
    'ADMINISTRATIVE SERVICES',
    'ASSESSMENT OF BUSINESS TAX AND OTHER FEES',
    'PAYMENT OF BUSINESS TAX AND OTHER FEES (NEW BUSINESS)',
    'PAYMENT OF BUSINESS TAX AND OTHER FEES (EXISTING BUSINESS)',
    'PAYMENT OF REAL PROPERTY TAX',
    'ASSESSMENT ON TAX ON FISHERIES',
    'PAYMENT OF TAX ON FISHERIES',
    'PAYMENT OF COMMUNITY TAXES',
    'PAYMENT OF PROFESSIONAL TAXES',
    'PAYMENT OF AMUSEMENT TAXES',
    'PAYMENT OF SECRETARY’S FEE',
    'PAYMENT OF BUILDING PERMIT FEES AND CHARGES',
    'PAYMENT OF LCR CERTIFICATION FEES',
    'PAYMENT OF ASSESSOR’S FEES',
    'PAYMENT OF ZONING AND LOCATIONAL FEE',
    'PAYMENT OF MAYOR’S PERMIT',
    'PAYMENT OF POLICE CLEARANCE',
    'CLEARANCE FEE FOR SCRAP MATERIALS',
    'PAYMENT AND PURCHASE OF ACCOUNTABLE FORMS',
    'PAYMENT OF RENTALS FOR THE USE TUBIGON CULTURAL AND SPORTS CENTER AND ITS FACILITY',
    'PAYMENT OF RENTAL FOR MUN. LOT, BLOCK & STALLS IN THE TUBIGON COMMERCIAL COMPLEX AND MUNICIPAL LOTS',
    'PAYMENT OF INITIAL DEPOSIT FOR RENTAL OF LGU OWNED HEAVY EQUIPMENT AND TOOLS',
    'RENTAL OF LGU OWNED HEAVY EQUIPMENT AND TOOLS',
    'PAYMENT OF FINES AND PENALTIES',
    'RETIREMENT OF BUSINESS',
    'RELEASE OF SOCIAL PENSION AND SOCIAL BONUS FOR SENIOR CITIZENS',
    'RELEASE OF FINANCIAL ASSISTANCE',
    'RELEASE OF CHECK TO GOVERNMENT SUPPLIER',
    'OTHER COLLECTION OF FEES'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL SOCIAL WELFARE & DEVELOPMENT OFFICE'),
      ),
      body: ListView.builder(
        itemCount: mtoCards.length,
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
                      mtoCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mtoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (mtoCards[index]) {
                  case 'ASSESSMENT OF BUSINESS TAX AND OTHER FEES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES1.pdf';
                    break;
                  case 'PAYMENT OF BUSINESS TAX AND OTHER FEES (NEW BUSINESS)':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES2.pdf';
                    break;
                  case 'PAYMENT OF BUSINESS TAX AND OTHER FEES (EXISTING BUSINESS)':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES3.pdf';
                    break;
                  case 'PAYMENT OF REAL PROPERTY TAX':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES4.pdf';
                    break;
                  case 'ASSESSMENT ON TAX ON FISHERIES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES5.pdf';
                    break;
                  case 'PAYMENT OF TAX ON FISHERIES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES6.pdf';
                    break;
                  case 'PAYMENT OF COMMUNITY TAXES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES7.pdf';
                    break;
                  case 'PAYMENT OF PROFESSIONAL TAXES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES8.pdf';
                    break;
                  case 'PAYMENT OF AMUSEMENT TAXES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES9.pdf';
                    break;
                  case 'PAYMENT OF SECRETARY’S FEE':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES10.pdf';
                    break;
                  case 'PAYMENT OF BUILDING PERMIT FEES AND CHARGES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES11.pdf';
                    break;
                  case 'PAYMENT OF LCR CERTIFICATION FEES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES12.pdf';
                    break;
                  case 'PAYMENT OF ASSESSOR’S FEES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES13.pdf';
                    break;
                  case 'PAYMENT OF ZONING AND LOCATIONAL FEE':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES14.pdf';
                    break;
                  case 'PAYMENT OF MAYOR’S PERMIT':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES15.pdf';
                    break;
                  case 'PAYMENT OF POLICE CLEARANCE':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES16.pdf';
                    break;
                  case 'CLEARANCE FEE FOR SCRAP MATERIALS':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES17.pdf';
                    break;
                  case 'PAYMENT AND PURCHASE OF ACCOUNTABLE FORMS':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES18.pdf';
                    break;
                  case 'PAYMENT OF RENTALS FOR THE USE TUBIGON CULTURAL AND SPORTS CENTER AND ITS FACILITY':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES19.pdf';
                    break;
                  case 'PAYMENT OF RENTAL FOR MUN. LOT, BLOCK & STALLS IN THE TUBIGON COMMERCIAL COMPLEX AND MUNICIPAL LOTS':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES20.pdf';
                    break;
                  case 'PAYMENT OF INITIAL DEPOSIT FOR RENTAL OF LGU OWNED HEAVY EQUIPMENT AND TOOLS':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES21.pdf';
                    break;
                  case 'RENTAL OF LGU OWNED HEAVY EQUIPMENT AND TOOLS':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES22.pdf';
                    break;
                  case 'PAYMENT OF FINES AND PENALTIES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES23.pdf';
                    break;
                  case 'RETIREMENT OF BUSINESS':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES24.pdf';
                    break;
                  case 'RELEASE OF SOCIAL PENSION AND SOCIAL BONUS FOR SENIOR CITIZENS':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES25.pdf';
                    break;
                  case 'RELEASE OF FINANCIAL ASSISTANCE':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES26.pdf';
                    break;
                  case 'RELEASE OF CHECK TO GOVERNMENT SUPPLIER':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES27.pdf';
                    break;
                  case 'OTHER COLLECTION OF FEES':
                    pdfPath = 'assets/pdf/mto/MTO_SERVICES28.pdf';
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
                    color: Color(0xFF000080), // Background color set to navy blue (hex: #000080)
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mtoCards[index],
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
