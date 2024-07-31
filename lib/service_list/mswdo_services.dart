import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MswdoServicesScreen extends StatelessWidget {
  final List<String> mswdoCards = [
    'MUNICIPAL SOCIAL WELFARE & DEVELOPMENT OFFICE',
    'ADMINISTRATIVE SERVICES',
    'APPLICATION FOR A SOLO PARENT ID',
    'AVAILING THE TUBIGON DROP-IN & WOMEN CRISIS CENTER SERVICES',
    'Financial Assistance for Hospitalization and Medicines for Individuals in Crisis Situation',
    'AVAILING FOOD PACKS FOR AFFECTED FAMILIES/COMMUNITIES',
    'PRE-MARRIAGE COUNSELING',
    'GETTING PWD (MEDICINE & GROCERY) PURCHASE BOOKLETS',
    'APPLICATION FOR A PWD ID (NEW/RENEW)',
  ];

  final List<String> backContents = [
    'Details about Municipal Social Welfare & Development Office',
    'Details about Administrative Services',
    'About the Service: The government implemented the Solo Parent Welfare Act to support, protect, distinguish and recognize the rights of Solo parents by giving privileges and benefits.',
    'About the Service: With the LGU’S aim in maintaining the Child Friendly Municipality Community of Practice(COP) status, a concept of building a Drop-In Center was conceptualized to cater to children who are in crisis situation or those in especially difficult circumstances. The services are not limited to children alone but also for abused and exploited women.',
    'About the Service: Section 17 of the Local Government Code (RA 7160) mandates the LGU to exercise other powers and discharge such other functions and responsibilities as necessary, appropriate, or incidental to the efficient and effective provision of the basic services such as but not limited to..health and social welfare services',
    'About the Service: During onset of disasters/calamities, the Office of the MSWDO has prepositioned goods for immediate response to individuals/families in need.',
    'About the Service: Article 16 of the Family Code requires contracting parties who applies for marriage license must undergo at least 4 hours of Pre-Marriage Counselling (PMC) by an accredited marriage counsellor. The Local Government Unit (LGU) of Tubigon created the PMC Team composed of Population Commissioned (POPCOM) trained Social Workers from MSWDO, Midwife and Family Health Associate from MHO, and Agriculture Officer from MAO.',
    'About the Service: Aside from the PWD ID, the accompanying Persons with Disability Purchase Booklets are also needed to avail of the benefits. Both are needed which can be obtained from the PWD section of the Municipal Social Welfare and Development Office.',
    'About the Service: The government implemented the Magna Carta Law for disabled Persons to support, protect, distinguish and recognize the rights of PWD by giving privileges and benefits.',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'APPLICATION FOR A SOLO PARENT ID':
        return 'assets/pdf/mswdo/MSWDO_SERVICE1.pdf';
      case 'AVAILING THE TUBIGON DROP-IN & WOMEN CRISIS CENTER SERVICES':
        return 'assets/pdf/mswdo/MSWDO_SERVICE2.pdf';
      case 'Financial Assistance for Hospitalization and Medicines for Individuals in Crisis Situation':
        return 'assets/pdf/mswdo/MSWDO_SERVICE3.pdf';
      case 'AVAILING FOOD PACKS FOR AFFECTED FAMILIES/COMMUNITIES':
        return 'assets/pdf/mswdo/MSWDO_SERVICE4.pdf';
      case 'PRE-MARRIAGE COUNSELING':
        return 'assets/pdf/mswdo/MSWDO_SERVICE5.pdf';
      case 'GETTING PWD (MEDICINE & GROCERY) PURCHASE BOOKLETS':
        return 'assets/pdf/mswdo/MSWDO_SERVICE6.pdf';
      case 'APPLICATION FOR A PWD ID (NEW/RENEW)':
        return 'assets/pdf/mswdo/MSWDO_SERVICE7.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL SOCIAL WELFARE & DEVELOPMENT OFFICE'),
      ),
      body: ListView.builder(
        itemCount: mswdoCards.length,
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
                      mswdoCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mswdoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(mswdoCards[index]);
            return FlippingCard(
              frontText: mswdoCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF0047AB), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: 20, // Front text size
              backTextSize: backContents[index].length > 200 ? 12 : 15,// Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
