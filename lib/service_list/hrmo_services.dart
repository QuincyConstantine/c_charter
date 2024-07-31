import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class HrmoServicesScreen extends StatelessWidget {
  final List<String> hrmoCards = [
    'HUMAN RESOURCE & MANAGEMENT OFFICE (HRMO)',
    'ADMINISTRATIVE SERVICES',
    'ISSUANCE OF CERTIFIED COPIES OF SERVICE RECORDS',
    'ISSUANCE OF CERTIFICATE OF EMPLOYMENT',
    'CERTIFICATION OF LEAVE CREDITS',
    'ISSUANCE OF NOSA (Notice of Salary Adjustment)',
    'ISSUANCE OF NOSI (Notice of Step Increment)',
  ];

  final List<String> backContents = [
    'Details about HRMO services',
    'Details about Administrative Services',
    'Details about Issuance of Certified Copies of Service Records',
    'Details about Issuance of Certificate of Employment',
    'Details about Certification of Leave Credits',
    'Details about Issuance of NOSA (Notice of Salary Adjustment)',
    'Details about Issuance of NOSI (Notice of Step Increment)',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'ISSUANCE OF CERTIFIED COPIES OF SERVICE RECORDS':
        return 'assets/pdf/hrmo/HRMO_SERVICE1.pdf';
      case 'ISSUANCE OF CERTIFICATE OF EMPLOYMENT':
        return 'assets/pdf/hrmo/HRMO_SERVICE2.pdf';
      case 'CERTIFICATION OF LEAVE CREDITS':
        return 'assets/pdf/hrmo/HRMO_SERVICE3.pdf';
      case 'ISSUANCE OF NOSA (Notice of Salary Adjustment)':
        return 'assets/pdf/hrmo/HRMO_SERVICE4.pdf';
      case 'ISSUANCE OF NOSI (Notice of Step Increment)':
        return 'assets/pdf/hrmo/HRMO_SERVICE5.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HUMAN RESOURCE & MANAGEMENT OFFICE'),
      ),
      body: ListView.builder(
        itemCount: hrmoCards.length,
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
                      hrmoCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(hrmoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(hrmoCards[index]);
            return FlippingCard(
              frontText: hrmoCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF008080), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: hrmoCards[index].length > 50 ? 14 : 20, // Front text size
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
