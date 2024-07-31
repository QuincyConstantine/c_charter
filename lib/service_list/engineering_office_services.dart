import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class EngineeringOfficeServicesScreen extends StatelessWidget {
  final List<String> engineeringCards = [
    'ENGINEERING OFFICE',
    'SECURING BUILDING PERMIT',
    'SECURING OCCUPANCY PERMIT',
    'REQUEST THE PREPARATION OF PLAN AND PROGRAM OF WORKS',
    'REQUEST STREETLIGHT MAINTENANCE',
    'REQUEST DRAINAGE MAINTENANCE'
  ];

  final List<String> backContents = [
    'Details about Engineering Office services',
    'The policy of the State to safeguard life, health, property, and public welfare, consistent with the principles of sound environmental management and control; and to this end, make it the purpose of this Code to provide for all buildings and structures, a framework of minimum standards and requirements to regulate and control their location, site, design, quality of materials, construction, use, occupancy and maintenance.',
    'The policy of the State to safeguard life, health, property, and public welfare, consistent with the principles of sound environmental management and control; and to this end, make it the purpose of this Code to provide for all buildings and structures, a framework of minimum standards and requirements to regulate and control their location, site, design, quality of materials, construction, use, occupancy and maintenance.',
    'The office of the Municipal Engineer is mandated to help the Barangay Officials in the preparation of plan and program of works.',
    'The Office of the Municipal Engineer is mandated for the maintenance of streetlights within the Municipality of Tubigon.',
    'The Office of the Municipal Engineer is mandated in the maintenance of drainage system within the Municipality of Tubigon.',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'SECURING BUILDING PERMIT':
        return 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE1.pdf';
      case 'SECURING OCCUPANCY PERMIT':
        return 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE2.pdf';
      case 'REQUEST THE PREPARATION OF PLAN AND PROGRAM OF WORKS':
        return 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE3.pdf';
      case 'REQUEST STREETLIGHT MAINTENANCE':
        return 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE4.pdf';
      case 'REQUEST DRAINAGE MAINTENANCE':
        return 'assets/pdf/engineering_office/ENGINEERING_OFFICE_SERVICE5.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ENGINEERING OFFICE'),
      ),
      body: ListView.builder(
        itemCount: engineeringCards.length,
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
                      engineeringCards[index],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('ADMINISTRATIVE SERVICES'),
                  ],
                ),
              ),
            );
          } else {
            final pdfPath = _getPdfPath(engineeringCards[index]);
            return FlippingCard(
              frontText: engineeringCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF4682B4), // Retain original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: 20, // Front text size
              backTextSize: backContents[index].length > 200 ? 12 : 15, // Back text size
            );
          }
        },
      ),
    );
  }
}
