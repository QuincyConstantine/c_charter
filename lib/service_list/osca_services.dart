import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class OscaServicesScreen extends StatelessWidget {
  final List<String> oscaCards = [
    'OFFICE OF SENIOR CITIZENS AFFAIRS (OSCA)',
    'ADMINISTRATIVE SERVICES',
    'RECEIVING COMPLAINTS FOR NOT GRANTING DISCOUNTS',
    'ISSUANCE OF OSCA ID',
    'GRANTING OF BURIAL ASSISTANCE',
    'ISSUANCE OF PURCHASE BOOKLETS',
    'ISSUANCE OF MEMBER DATA RECORD (MDR)',
  ];

  final List<String> backContents = [
    'Details about Office of Senior Citizens Affairs (OSCA)',
    'Details about Administrative Services',
    'To investigate the validity of the complaint if ever the complaint had reasonable cause, then advice complaint to fill up a complaint form. Adopting due process from filing a formal complaint in court ',
    'To safeguard the use and disposition of the Municipal Government\'s assets and to determine its liabilities from claims, pre-audit is undertaken by the Municipal Accountant to determine that all necessary supporting documents of vouchers/ claims are submitted.',
    'To safeguard the use and disposition of the Municipal Government\'s assets and to determine its liabilities from claims, pre-audit is undertaken by the Municipal Accountant to determine that all necessary supporting documents of vouchers/ claims are submitted.',
    'To safeguard the use and disposition of the Municipal Government\'s assets and to determine its liabilities from claims, pre-audit is undertaken by the Municipal Accountant to determine that all necessary supporting documents of vouchers/ claims are submitted.',
    'To safeguard the use and disposition of the Municipal Government\'s assets and to determine its liabilities from claims, pre-audit is undertaken by the Municipal Accountant to determine that all necessary supporting documents of vouchers/ claims are submitted. ',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'RECEIVING COMPLAINTS FOR NOT GRANTING DISCOUNTS':
        return 'assets/pdf/osca/OSCA_SERVICE1.pdf';
      case 'ISSUANCE OF OSCA ID':
        return 'assets/pdf/osca/OSCA_SERVICE2.pdf';
      case 'GRANTING OF BURIAL ASSISTANCE':
        return 'assets/pdf/osca/OSCA_SERVICE3.pdf';
      case 'ISSUANCE OF PURCHASE BOOKLETS':
        return 'assets/pdf/osca/OSCA_SERVICE4.pdf';
      case 'ISSUANCE OF MEMBER DATA RECORD (MDR)':
        return 'assets/pdf/osca/OSCA_SERVICE5.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OFFICE OF SENIOR CITIZENS AFFAIRS (OSCA)'),
      ),
      body: ListView.builder(
        itemCount: oscaCards.length,
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
                      oscaCards[index],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(oscaCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(oscaCards[index]);
            return FlippingCard(
              frontText: oscaCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFFB76E79), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: 25, // Front text size
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
