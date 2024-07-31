import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget

class AssessorOfficeServicesScreen extends StatelessWidget {
  final List<String> assessorCards = [
    'ASSESSOR\'S OFFICE',
    'ADMINISTRATIVE SERVICES',
    'ISSUANCE OF CERTIFIED TRUE COPIES OF TAX DECLARATIONS',
    'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR NEW DISCOVERIES OF LAND',
    'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR NEW BUILDING AND MACHINERY',
    'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR TRANSFER OF OWNERSHIP OF UNTITLED PROPERTY',
    'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR TRANSFER OF OWNERSHIP OF TITLED PROPERTY',
    'REQUEST FOR THE REVISION OF OLD TAX DECLARATION',
    'REQUEST FOR THE ISSUANCE OF CERTIFICATION OF LANDHOLDING/NO LANDHOLDINGS',
    'REQUEST FOR THE ISSUANCE OF SKETCH PLAN PER APPROVED CADASTRAL SURVEY OR VICINITY MAP',
    'REQUEST FOR THE ISSUANCE OF CERTIFICATION OF IMPROVEMENT/NO IMPROVEMENT',
    'REQUEST FOR CANCELLATION OF TAX DECLARATION BECAUSE IT IS NO LONGER EXISTING AND DUE TO DESTRUCTION',
    'REQUEST FOR CANCELLATION OF TAX DECLARATION DUE TO COURT DECISION',
    'REQUEST FOR CANCELLATION OF TAX DECLARATION DUE TO DUPLICATIONS',
    'REQUEST FOR SUBDIVISION/CONSOLIDATION OF TITLED PROPERTIES',
    'REQUEST FOR SUBDIVISION/CONSOLIDATION OF UNTITLED PROPERTIES',
    'REQUEST FOR SUBDIVISION/CONSOLIDATION OF PROPERTY UNDER CARP/OLT/CLOA',
    'REQUEST FOR SUBDIVISION/CONSOLIDATION OF PROPERTY WITH P468 (WATERSHED/RESERVE AREA)'
  ];

  final List<String> backContents = [
    'Description for Assessor\'s Office',
    'Description for Administrative Services',
    'To provide a system generated certified true copies to the transacting clients.',
    'The objective for the issuance of tax declaration for the newly discovered lands is to properly account all real properties within the municipality.',
    'The objective for the issuance of tax declaration for the new building and machinery is to generate more revenues.',
    'The issuance of tax declaration for transfer of ownership of untitled property is the updating of the ownership property index.',
    'Request for issuance of tax declarations for transfer of ownership of titled property',
    'Request for the revision of old tax declaration',
    'These two certifications are needed in the computation of estate tax and to determine the total aggregate landholding of the property owner.',
    'Request for the issuance of sketch plan per approved cadastral survey or vicinity map',
    'Request for the issuance of certification of improvement/no improvement',
    'Request for cancellation of tax declaration because it is no longer existing and due to destruction',
    'Request for cancellation of tax declaration due to court decision',
    'Request for cancellation of tax declaration due to duplications',
    'Request for subdivision/consolidation of titled properties',
    'Request for subdivision/consolidation of untitled properties',
    'Request for subdivision/consolidation of property under CARP/OLT/CLOA',
    'Request for subdivision/consolidation of property with P468 (watershed/reserve area)'
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'ISSUANCE OF CERTIFIED TRUE COPIES OF TAX DECLARATIONS':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE1.pdf';
      case 'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR NEW DISCOVERIES OF LAND':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE2.pdf';
      case 'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR NEW BUILDING AND MACHINERY':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE3.pdf';
      case 'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR TRANSFER OF OWNERSHIP OF UNTITLED PROPERTY':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE4.pdf';
      case 'REQUEST FOR ISSUANCE OF TAX DECLARATIONS FOR TRANSFER OF OWNERSHIP OF TITLED PROPERTY':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE5.pdf';
      case 'REQUEST FOR THE REVISION OF OLD TAX DECLARATION':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE6.pdf';
      case 'REQUEST FOR THE ISSUANCE OF CERTIFICATION OF LANDHOLDING/NO LANDHOLDINGS':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE7.pdf';
      case 'REQUEST FOR THE ISSUANCE OF SKETCH PLAN PER APPROVED CADASTRAL SURVEY OR VICINITY MAP':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE8.pdf';
      case 'REQUEST FOR THE ISSUANCE OF CERTIFICATION OF IMPROVEMENT/NO IMPROVEMENT':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE9.pdf';
      case 'REQUEST FOR CANCELLATION OF TAX DECLARATION BECAUSE IT IS NO LONGER EXISTING AND DUE TO DESTRUCTION':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE10.pdf';
      case 'REQUEST FOR CANCELLATION OF TAX DECLARATION DUE TO COURT DECISION':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE11.pdf';
      case 'REQUEST FOR CANCELLATION OF TAX DECLARATION DUE TO DUPLICATIONS':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE12.pdf';
      case 'REQUEST FOR SUBDIVISION/CONSOLIDATION OF TITLED PROPERTIES':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE13.pdf';
      case 'REQUEST FOR SUBDIVISION/CONSOLIDATION OF UNTITLED PROPERTIES':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE14.pdf';
      case 'REQUEST FOR SUBDIVISION/CONSOLIDATION OF PROPERTY UNDER CARP/OLT/CLOA':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE15.pdf';
      case 'REQUEST FOR SUBDIVISION/CONSOLIDATION OF PROPERTY WITH P468 (WATERSHED/RESERVE AREA)':
        return 'assets/pdf/assessor_office/ASSESSOR_SERVICE16.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assessor\'s Office'),
      ),
      body: ListView.builder(
        itemCount: assessorCards.length,
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
                      assessorCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(assessorCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(assessorCards[index]);
            return FlippingCard(
              frontText: assessorCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF191970), // Retain original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: assessorCards[index].length > 50 ? 15 : 20, // Adjust font size based on length
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
