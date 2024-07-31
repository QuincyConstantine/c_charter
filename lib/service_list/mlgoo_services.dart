import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MlgooServicesScreen extends StatelessWidget {
  final List<String> mlgooCards = [
    'MUNICIPAL LOCAL GOVERNMENT OPERATIONS OFFICE (MLGOO)',
    'ADMINISTRATIVE SERVICES',
    'PROCESSING OF BARANGAY OFFICIAL’S DEATH BENEFIT ASSISTANCE',
    'ISSUANCE OF CERTIFICATE OF INCUMBENCY (BRGY. & MUNICIPAL)',
    'PROCESSING OF AUTHORITY TO PURCHASE VEHICLE'
  ];

  final List<String> backContents = [
    'Details about MLGOO services',
    'Details about Administrative Services',
    'Claimants/Beneficiaries of the Deceased Barangay Officials',
    'Municipal and Barangay Officials',
    'Local Government Unit'
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'PROCESSING OF BARANGAY OFFICIAL’S DEATH BENEFIT ASSISTANCE':
        return 'assets/pdf/mlgoo/MLGOO_SERVICE1.pdf';
      case 'ISSUANCE OF CERTIFICATE OF INCUMBENCY (BRGY. & MUNICIPAL)':
        return 'assets/pdf/mlgoo/MLGOO_SERVICE2.pdf';
      case 'PROCESSING OF AUTHORITY TO PURCHASE VEHICLE':
        return 'assets/pdf/mlgoo/MLGOO_SERVICE3.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL LOCAL GOVERNMENT OPERATIONS OFFICE (MLGOO)'),
      ),
      body: ListView.builder(
        itemCount: mlgooCards.length,
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
                      mlgooCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mlgooCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(mlgooCards[index]);
            return FlippingCard(
              frontText: mlgooCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF20B2AA), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: mlgooCards[index].length > 50 ? 15 : 20, // Front text size
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
