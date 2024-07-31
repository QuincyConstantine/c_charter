import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class EswmoServicesScreen extends StatelessWidget {
  final List<String> eswmoCards = [
    'ECOLOGICAL SOLID WASTE MANAGEMENT OFFICE (ESWMO)',
    'ADMINISTRATIVE SERVICES',
    'AVAILING OF GARBAGE COLLECTION',
    'GARBAGE COLLECTION FEE FOR HOUSEHOLDS/BUSINESS ESTABLISHMENTS (PAYING CLIENT)',
    'REPORT/COMPLAINT RECEIVED BY THE MESWM OFFICE (THRU LIT PERSONNEL) AND RELATIVE TO VARIOUS ACTIVITIES PUNISHABLE UNDER ESWM MUNICIPAL ORDINANCES AND NATIONAL LAWS (WITH THE ASSISTANCE OF THE PNP – TUBIGON AND BARANGAY OFFICIALS)',
  ];

  final List<String> backContents = [
    'Details about Ecological Solid Waste Management Office (ESWMO) services',
    'Details about Administrative Services',
    'Garbage collection services of the LGU is available to all households and business establishments within the municipality.',
    'Any person can apply for garbage collection to be personally collected in their respective households for their biodegradable wastes.',
    'Any person has the right to report and complaint (thru verbal, mobile phone or social media) any violations of ESWM ordinances and national laws committed within the territorial jurisdiction of the municipality',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'AVAILING OF GARBAGE COLLECTION':
        return 'assets/pdf/eswmo/ESWMO_SERVICE1.pdf';
      case 'GARBAGE COLLECTION FEE FOR HOUSEHOLDS/BUSINESS ESTABLISHMENTS (PAYING CLIENT)':
        return 'assets/pdf/eswmo/ESWMO_SERVICE2.pdf';
      case 'REPORT/COMPLAINT RECEIVED BY THE MESWM OFFICE (THRU LIT PERSONNEL) AND RELATIVE TO VARIOUS ACTIVITIES PUNISHABLE UNDER ESWM MUNICIPAL ORDINANCES AND NATIONAL LAWS (WITH THE ASSISTANCE OF THE PNP – TUBIGON AND BARANGAY OFFICIALS)':
        return 'assets/pdf/eswmo/ESWMO_SERVICE3.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ESWMO Office'),
      ),
      body: ListView.builder(
        itemCount: eswmoCards.length,
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
                      eswmoCards[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(eswmoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(eswmoCards[index]);
            return FlippingCard(
              frontText: eswmoCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF8B4513), // Retain original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: eswmoCards[index].length > 50 ? 13 : 20, // Front text size
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
