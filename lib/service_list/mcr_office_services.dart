import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class McrServicesScreen extends StatelessWidget {
  final List<String> mcrCards = [
    'MUNICIPAL CIVIL REGISTRAR’S OFFICE',
    'ADMINISTRATIVE SERVICES',
    'REGISTRATION OF CERTIFICATE OF LIVE BIRTH (COLB) AND CERTIFICATE OF MARRIAGE',
    'REGISTRATION OF CERTIFICATE OF DEATH (COD)',
    'DELAYED REGISTRATION OF BIRTH (COLB), MARRIAGE(COM) AND DEATH (COD)',
    'OUT OF TOWN DELAYED REGISTRATION OF BIRTH & MARRIAGE',
    'APPLICATION FOR LEGITIMATION OF CHILD & RA 9255',
    'ENDORSEMENT OF CIVIL REGISTRAY DOCUMENTS TO THE PSA',
    'APPLICATION FOR CHANGE OF FIRST NAME & CORRECTION OF CLERICAL ERROR',
    'APPLICATION FOR CORRECTION OF GENDER & DATE OF BIRTH(MONTH & DATE ONLY)',
    'MIGRANT PETITION FOR CORRECTION OF CLERICAL ERROR (CCE) & CHANGE OF FIRST NAME(CFN)',
    'APPLICATION FOR SUPPLEMENTAL REPORT',
    'OUT OF TOWN APPLICATION FOR LEGITIMATION, RA 9255 & SUPPLEMENTAL REPORT',
    'ISSUANCE OF BIRTH, MARRIAGE & DEATH CERTIFICATE OR CERTIFIED TRUE COPY (LOCAL)',
    'ISSUANCE OF CENOMAR & SECURITY PAPER(SECPA) OF BIRTH, DEATH & MARRIAGE CERTIFICATE',
    'ENDORSEMENT OF AMENDED/ANNOTATED CIVIL REGISTRATION DOCUMENTS WITH COURT ORDER',
    'APPLICATION FOR MARRIAGE LICENSE',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL CIVIL REGISTRAR’S OFFICE'),
      ),
      body: ListView.builder(
        itemCount: mcrCards.length,
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
                      mcrCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mcrCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (mcrCards[index]) {
                  case 'REGISTRATION OF CERTIFICATE OF LIVE BIRTH (COLB) AND CERTIFICATE OF MARRIAGE':
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE1.pdf';
                    break;
                  case 'REGISTRATION OF CERTIFICATE OF DEATH (COD)':
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE2.pdf';
                    break;
                  case  'DELAYED REGISTRATION OF BIRTH (COLB), MARRIAGE(COM) AND DEATH (COD)' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE3.pdf';
                    break;
                  case  'OUT OF TOWN DELAYED REGISTRATION OF BIRTH & MARRIAGE' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE4.pdf';
                    break;
                  case  'APPLICATION FOR LEGITIMATION OF CHILD & RA 9255' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE5.pdf';
                    break;
                  case  'ENDORSEMENT OF CIVIL REGISTRAY DOCUMENTS TO THE PSA' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE6.pdf';
                    break;
                  case  'APPLICATION FOR CHANGE OF FIRST NAME & CORRECTION OF CLERICAL ERROR' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE7.pdf';
                    break;
                  case  'APPLICATION FOR CORRECTION OF GENDER & DATE OF BIRTH(MONTH & DATE ONLY)' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE8.pdf';
                    break;
                  case  'MIGRANT PETITION FOR CORRECTION OF CLERICAL ERROR (CCE) & CHANGE OF FIRST NAME(CFN)' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE9.pdf';
                    break;
                  case  'APPLICATION FOR SUPPLEMENTAL REPORT' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE10.pdf';
                    break;
                  case  'OUT OF TOWN APPLICATION FOR LEGITIMATION, RA 9255 & SUPPLEMENTAL REPORT' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE11.pdf';
                    break;
                  case  'ISSUANCE OF BIRTH, MARRIAGE & DEATH CERTIFICATE OR CERTIFIED TRUE COPY (LOCAL)' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE12.pdf';
                    break;
                  case  'ISSUANCE OF CENOMAR & SECURITY PAPER(SECPA) OF BIRTH, DEATH & MARRIAGE CERTIFICATE':
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE13.pdf';
                    break;
                  case  'ENDORSEMENT OF AMENDED/ANNOTATED CIVIL REGISTRATION DOCUMENTS WITH COURT ORDER' :
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE14.pdf';
                    break;
                  case  'APPLICATION FOR MARRIAGE LICENSE':
                    pdfPath = 'assets/pdf/mcro/MCR_SERVICE15.pdf';
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
                        mcrCards[index],
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
