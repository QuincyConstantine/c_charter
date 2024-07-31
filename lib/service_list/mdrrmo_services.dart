import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MdrrmoServicesScreen extends StatelessWidget {
  final List<String> mdrrmoCards = [
    'ACCOUNTING OFFICE',
    'ADMINISTRATIVE SERVICES',
    'CALAMITY RESPONSE',
    'REQUEST FOR HAZARD CERTIFICATION (HAZARDOUS TREE)',
    'HOSPITAL TRANSFER',
    'EMERGENCY SITUATION RESPONSE',
    'REQUEST FOR EQUIPMENT ASSISTANCE',
    'REQUEST FOR INFORMATION AND EDUCATION MATERIALS',
    'REQUEST FOR MULTI HAZARD MAPS'
  ];

  final List<String> backContents = [
    'Details about Accounting Office services',
    'Details about Administrative Services',
    'To putting people safe, prevent disaster and meeting the basic needs of the people until more permanent and sustainable solutions can be found',
    'Help and assess in the elimination of hazardous trees in the barangay.',
    'Assess individual in medical crisis to be transported from their residence going to the hospital, vice versa, or from Tubigon Community Hospital going to hospitals in Tagbilaran City.',
    'Anybody in a situation that poses an immediate risk to health, life, property or environment. One who needs urgent interventions to prevent a worsening of the situations, mitigations may not be possible and agencies may only be able to offer palliative care for the aftermath',
    'Provide assistance to barangays/individuals in need to use the equipment for disaster mitigation purposes.',
    'Disseminate information on hazard areas, what to do before, during and after a disaster, relevant information on natural hazard that will help the public in their preparedness plan.',
    'Provides barangay/institutions with hazard maps that will be use in their disaster risk reduction and management plan preparation for their respective barangay/institutions',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'CALAMITY RESPONSE':
        return 'assets/pdf/mdrrmo/MDRRMO_SERVICE1.pdf';
      case 'REQUEST FOR HAZARD CERTIFICATION (HAZARDOUS TREE)':
        return 'assets/pdf/mdrrmo/MDRRMO_SERVICE2.pdf';
      case 'HOSPITAL TRANSFER':
        return 'assets/pdf/mdrrmo/MDRRMO_SERVICE3.pdf';
      case 'EMERGENCY SITUATION RESPONSE':
        return 'assets/pdf/mdrrmo/MDRRMO_SERVICE4.pdf';
      case 'REQUEST FOR EQUIPMENT ASSISTANCE':
        return 'assets/pdf/mdrrmo/MDRRMO_SERVICE5.pdf';
      case 'REQUEST FOR INFORMATION AND EDUCATION MATERIALS':
        return 'assets/pdf/mdrrmo/MDRRMO_SERVICE6.pdf';
      case 'REQUEST FOR MULTI HAZARD MAPS':
        return 'assets/pdf/mdrrmo/MDRRMO_SERVICE7.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MDRRMO Office'),
      ),
      body: ListView.builder(
        itemCount: mdrrmoCards.length,
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
                      mdrrmoCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mdrrmoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(mdrrmoCards[index]);
            return FlippingCard(
              frontText: mdrrmoCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFFF28500), // Retain original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: 20, // Front text size
              backTextSize: backContents[index].length > 150 ? 15 : 20, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
