import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MayorsOfficeServicesScreen extends StatelessWidget {
  final List<String> mayorCards = [
    'MAYOR’S OFFICE',
    'ADMINISTRATIVE SERVICES',
    'SECURING MAYOR’S CLEARANCE & CERTIFICATE OF GOOD MORAL CHARACTER',
    'SECURING PERMIT ON ALL ADVERTISING / PROMOTIONAL ACTIVITIES',
    'SECURING PERMIT TO CONDUCT PUBLIC ASSEMBLY, RALLIES AND DEMONSTRATIONS, PARADES, MOTORCADE, RECOREDA, CAROLLING, DISCO, BENEFIT DANCE, CONCERTS, FUND RAISING, RAFFLE DRAWS, ETC.',
    'AVAILING OF PUBLIC ASSISTANCE',
    'SECURING AFFIDAVITS',
    'ISSUANCE OF BURIAL PERMIT',
    'ISSUANCE OF MAYOR’S PERMIT',
    'SECURING FINANCIAL ASSISTANCE'
  ];

  final List<String> backContents = [
    'Details about Mayor\'s Office services',
    'Details about Administrative Services',
    'What are the Requirements: Police Clearance – Original copy Latest Community Tax Certificate Official Receipt from the Municipal Treasurer’s Office',
    'What are the Requirements: Barangay Clearance Zoning Clearance/authority/consent of private owner Official Receipt from the Municipal Treasurer’s Office Sample of advertising/promotional materials',
    'What are the Requirements: Letter request addressed to the Municipal Mayor indicating the scheduled date, planned route and purpose of the activity Must secure Official Receipt of payment from the Municipal Treasurer’s Office',
    'What are the Requirements: Punong Barangay’s Certification Official Receipt of payment from the Municipal Treasurer’s Office',
    'Details about Securing Affidavits',
    'What are the Requirements: Death Certificate',
    'What are the Requirements: Based on the approved required documentary requirements by the BPLO per line of busines',
    'What are the Requirements: Barangay ClearanceHospital bill or official receipts'
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'SECURING MAYOR’S CLEARANCE & CERTIFICATE OF GOOD MORAL CHARACTER':
        return 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE1.pdf';
      case 'SECURING PERMIT ON ALL ADVERTISING / PROMOTIONAL ACTIVITIES':
        return 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE2.pdf';
      case 'SECURING PERMIT TO CONDUCT PUBLIC ASSEMBLY, RALLIES AND DEMONSTRATIONS, PARADES, MOTORCADE, RECOREDA, CAROLLING, DISCO, BENEFIT DANCE, CONCERTS, FUND RAISING, RAFFLE DRAWS, ETC.':
        return 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE3.pdf';
      case 'AVAILING OF PUBLIC ASSISTANCE':
        return 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE4.pdf';
      case 'SECURING AFFIDAVITS':
        return 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE5.pdf';
      case 'ISSUANCE OF BURIAL PERMIT':
        return 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE6.pdf';
      case 'ISSUANCE OF MAYOR’S PERMIT':
        return 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE7.pdf';
      case 'SECURING FINANCIAL ASSISTANCE':
        return 'assets/pdf/mayors_office/MAYORS_OFFICE_SERVICE8.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mayor\'s Office'),
      ),
      body: ListView.builder(
        itemCount: mayorCards.length,
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
                      mayorCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mayorCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(mayorCards[index]);
            return FlippingCard(
              frontText: mayorCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF6A0DAD), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: mayorCards[index].length > 50 ? 15 : 20, // Front text size
              backTextSize: 14.0, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
