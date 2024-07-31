import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class BploServicesScreen extends StatelessWidget {
  final List<String> bploCards = [
    'BUSINESS PERMIT & LICENSING OFFICE (BPLO)',
    'ADMINISTRATIVE SERVICES',
    'SECURING MAYOR’S PERMIT TO VARIOUS ACTIVITIES',
    'SECURING PERMIT ON ALL ADVERTISING / PROMOTIONAL ACTIVITIES',
    'SECURING / RENEWING MAYOR’S PERMIT / BUSINESS PERMIT',
    'SECURING / RENEWING MAYOR’S PERMIT FOR TRICYCLES, TRISIKADS, MULTI-CABS, V-HIRE AND BUSES',
    'ISSUANCE OF FISHERY PERMIT',
    'RETIRING A BUSINESS OPERATION/ CERTIFICATION OF “NO BUSINESS PERMIT RECORD" ',
    'AMENDMENTS IN THE BUSINESS PERMIT',
    'RENEWAL OF CONTRACT OF LEASE',
    'SECURING A BURIAL PERMIT',
  ];

  final List<String> backContents = [
    'Description for Business Permit & Licensing Office (BPLO)',
    'Description for Administrative Services',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon.',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon.',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon.',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon.',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon.',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon.',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon.',
    'Any individual, group or institution that has business or activity within the Municipality of Tubigon.',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'SECURING MAYOR’S PERMIT TO VARIOUS ACTIVITIES':
        return 'assets/pdf/bplo/BPLO_SERVICE1.pdf';
      case 'SECURING PERMIT ON ALL ADVERTISING / PROMOTIONAL ACTIVITIES':
        return 'assets/pdf/bplo/BPLO_SERVICE2.pdf';
      case 'SECURING / RENEWING MAYOR’S PERMIT / BUSINESS PERMIT':
        return 'assets/pdf/bplo/BPLO_SERVICE3.pdf';
      case 'SECURING / RENEWING MAYOR’S PERMIT FOR TRICYCLES, TRISIKADS, MULTI-CABS, V-HIRE AND BUSES':
        return 'assets/pdf/bplo/BPLO_SERVICE4.pdf';
      case 'ISSUANCE OF FISHERY PERMIT':
        return 'assets/pdf/bplo/BPLO_SERVICE5.pdf';
      case 'RETIRING A BUSINESS OPERATION/ CERTIFICATION OF “NO BUSINESS PERMIT RECORD" ':
        return 'assets/pdf/bplo/BPLO_SERVICE6.pdf';
      case 'AMENDMENTS IN THE BUSINESS PERMIT':
        return 'assets/pdf/bplo/BPLO_SERVICE7.pdf';
      case 'RENEWAL OF CONTRACT OF LEASE':
        return 'assets/pdf/bplo/BPLO_SERVICE8.pdf';
      case 'SECURING A BURIAL PERMIT':
        return 'assets/pdf/bplo/BPLO_SERVICE9.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BUSINESS PERMIT & LICENSING OFFICE (BPLO)'),
      ),
      body: ListView.builder(
        itemCount: bploCards.length,
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
                      bploCards[index],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(bploCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(bploCards[index]);
            return FlippingCard(
              frontText: bploCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF32CD32), // Retain original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: bploCards[index].length > 50 ? 15 : 17, // Adjust font size based on length
              backTextSize: 17.0, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
