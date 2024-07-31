import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
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

  final List<String> backContents = [
    'Details about MCR services',
    'Details about Administrative Services',
    'The birth to a child, being a vital event of a person shall be registered within 30 days from the time of birth as the Local Civil Registrar of the city/municipality where the birth occurred. \n-For ordinary marriage, the certificate of marriage shall be registered within 15 days from the date of marriage; while marriage excempt from marriage license, the prescribed period of registration is within 30 days. ',
    '-It shall be the responsibility of the nearest of kin or spouse who has knowledged of the death of a person to report the same within 30 days reglamentary period.',
    '-It shall be the responsibility of the nearest of kin or spouse who has knowledge of the death of a person to report the same within 30 days reglamentary period.',
    '- For birth & marriage occurred outside Tubigon',
    '- Illegitimate child can use the surname of the father',
    '- For those who have no record at the Philippine Statistics Authority & for the issuance of Security Paper (SECPA)',
    'RA 9048 authorizes the city/municipal civil registrar or the consul general to correct a clerical or typographical error in the entry and or change of first name in the civil registrar without need of judicial order. It is aim to an expeditious and cheaper way of correcting errors found in the civil registry documents.',
    '-RA 10172 authorizes the city/municipal civil registrar or the consul general to correct a clerical or typographical error in an entry on gender and date of birth(month & date only) in the civil registrar without need of a judicial order. It is aimed to an expeditious and cheaper way of correcting errors found in the civil registry documents.',
    '-Correction of Clerical Error and Change of First Name maybe avail for birth, marriage and death certificate registered outside Tubigon',
    'This is to supply information inadvertently omitted when the document was registered.',
    'Details about Out of Town Application for Legitimation, RA 9255 & Supplemental Report',
    'Details about Issuance of Birth, Marriage & Death Certificate or Certified True Copy (Local)',
    'Details about Issuance of CENOMAR & Security Paper (SECPA) of Birth, Death & Marriage Certificate',
    'Details about Endorsement of Amended/Annotated Civil Registration Documents with Court Order',
    'Details about Application for Marriage License',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'REGISTRATION OF CERTIFICATE OF LIVE BIRTH (COLB) AND CERTIFICATE OF MARRIAGE':
        return 'assets/pdf/mcro/MCR_SERVICE1.pdf';
      case 'REGISTRATION OF CERTIFICATE OF DEATH (COD)':
        return 'assets/pdf/mcro/MCR_SERVICE2.pdf';
      case 'DELAYED REGISTRATION OF BIRTH (COLB), MARRIAGE(COM) AND DEATH (COD)':
        return 'assets/pdf/mcro/MCR_SERVICE3.pdf';
      case 'OUT OF TOWN DELAYED REGISTRATION OF BIRTH & MARRIAGE':
        return 'assets/pdf/mcro/MCR_SERVICE4.pdf';
      case 'APPLICATION FOR LEGITIMATION OF CHILD & RA 9255':
        return 'assets/pdf/mcro/MCR_SERVICE5.pdf';
      case 'ENDORSEMENT OF CIVIL REGISTRAY DOCUMENTS TO THE PSA':
        return 'assets/pdf/mcro/MCR_SERVICE6.pdf';
      case 'APPLICATION FOR CHANGE OF FIRST NAME & CORRECTION OF CLERICAL ERROR':
        return 'assets/pdf/mcro/MCR_SERVICE7.pdf';
      case 'APPLICATION FOR CORRECTION OF GENDER & DATE OF BIRTH(MONTH & DATE ONLY)':
        return 'assets/pdf/mcro/MCR_SERVICE8.pdf';
      case 'MIGRANT PETITION FOR CORRECTION OF CLERICAL ERROR (CCE) & CHANGE OF FIRST NAME(CFN)':
        return 'assets/pdf/mcro/MCR_SERVICE9.pdf';
      case 'APPLICATION FOR SUPPLEMENTAL REPORT':
        return 'assets/pdf/mcro/MCR_SERVICE10.pdf';
      case 'OUT OF TOWN APPLICATION FOR LEGITIMATION, RA 9255 & SUPPLEMENTAL REPORT':
        return 'assets/pdf/mcro/MCR_SERVICE11.pdf';
      case 'ISSUANCE OF BIRTH, MARRIAGE & DEATH CERTIFICATE OR CERTIFIED TRUE COPY (LOCAL)':
        return 'assets/pdf/mcro/MCR_SERVICE12.pdf';
      case 'ISSUANCE OF CENOMAR & SECURITY PAPER(SECPA) OF BIRTH, DEATH & MARRIAGE CERTIFICATE':
        return 'assets/pdf/mcro/MCR_SERVICE13.pdf';
      case 'ENDORSEMENT OF AMENDED/ANNOTATED CIVIL REGISTRATION DOCUMENTS WITH COURT ORDER':
        return 'assets/pdf/mcro/MCR_SERVICE14.pdf';
      case 'APPLICATION FOR MARRIAGE LICENSE':
        return 'assets/pdf/mcro/MCR_SERVICE15.pdf';
      default:
        return '';
    }
  }

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
            final pdfPath = _getPdfPath(mcrCards[index]);
            return FlippingCard(
              frontText: mcrCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF007BA7), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: mcrCards[index].length > 50 ? 14 : 20, // Front text size
              backTextSize: backContents[index].length > 200 ? 12 : 15, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
