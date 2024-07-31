import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MpdcServicesScreen extends StatelessWidget {
  final List<String> mpdcCards = [
    'MUNICIPAL PLANNING & DEVELOPMENT COORDINATOR’S OFFICE (MPDCO)',
    'ADMINISTRATIVE SERVICES',
    'SECURING MUNICIPAL STATISTICAL DATA/DOCUMENTS',
    'SECURING ZONING CERTIFICATE AND ZONING CERTIFICATE FOR FREE PATENT',
    'SECURING ZONING/LOCATIONAL CLEARANCE FOR BUSINESS PERMIT',
    'SECURING LOCATIONAL CLEARANCE FOR BUILDING CONSTRUCTION',
    'SECURING APPROVAL OF SUBDIVISION PLANS (SIMPLESUBDIVISION)',
    'SECURING PRELIMINARY SUBDIVISION DEVELOPMENT PLAN (PSDP) / PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT',
    'SECURING DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT',
    'SECURING PERMIT FOR EXTENSION OF TIME TO DEVELOP FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT',
    'SECURING CERTIFICATE OF COMPLETION FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT',
    'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: CELL SITES',
    'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: FUNERAL ESTABLISHMENTS',
    'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: POULTRY/PIGGERY',
    'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: REFILLING GAS STATION',
  ];

  final List<String> backContents = [
    'Details about MPDCO services',
    'Details about Administrative Services',
    'Research assistance thru provision of municipal data/documents is given to any individual/organization.',
    'Land Use Zoning Certification is requested by a taxpayer and/or any individual for them to identify/know the land use of the lot they own whether it is a residential, commercial, industrial or institutional. This is being issued for the purpose of ensuring compliance to the Comprehensive Land Use Plan (CLUP) and Zoning Ordinance of the municipality.',
    'A Zoning Certification/Locational Clearance is required prior to securing a New Business Permit in order to ensure compliance to the Comprehensive Land Use Plan (CLUP) and Zoning Ordinance of the Municipality.',
    'An enterprise or private person constructing a new building or applying for expansion/renovation/alteration is required to secure a Locational/Zoning Clearance prior to the application for Building Permit. This should be done before the start of construction to ensure that the structure is allowed in the chosen location and that it is in conformity with the Comprehensive Land Use Plan (CLUP) and Zoning Ordinance of the municipality.',
    'Any person or legal entity who intends to subdivide a parcel of lot is required to secure a Subdivision Plan Approval to ensure compliance with the approved Comprehensive Land Use Plan (CLUP) and Zoning Ordinance of the municipality.',
    'An enterprise or private person developing any kind of project mentioned above is required to secure a Preliminary Approval and Locational Clearance (PALC) prior to the issuance of final approval and development permit (DP). This should be done before the final design/plan is approved prior to the start of construction/development to ensure that the project is allowed in the chosen location and is in conformity with the Comprehensive Land Use Plan and Zoning Ordinance of the municipality. ',
    'An enterprise or private person developing any kind of project mentioned above is required to secure a Development Permit (DP) prior to the start of the project. This should be done before the start of construction/development to ensure that the project is allowed in the chosen location and is in conformity with the Comprehensive Land Use Plan and Zoning Ordinance of the municipality',
    'An enterprise or private person developing any kind of project mentioned above is required to secure a Permit for Extension of Time to Develop if development has not commenced or completed within one year upon issuance of the Development Permit of the project.',
    'An enterprise or private person developing any kind of project mentioned above is required to secure a Certificate of Completion after the development project has completed.',
    'A Preliminary Approval and Locational Clearance (PALC) and Development Permit (DP) are required prior to the establishment of a Cell Site in accordance with the approved Comprehensive Land Use Plan (CLUP) and Zoning Ordinance of the municipality.',
    'A Preliminary Approval and Locational Clearance (PALC) and Development Permit (DP) is required prior to the establishment of a funeral parlor to ensure compliance with the approved Comprehensive Land Use Plan (CLUP) and Zoning Ordinance of the municipality.',
    'A Preliminary Approval and Locational Clearance (PALC) and Development Permit (DP) is required prior to the establishment of poultry/piggery to ensure compliance with the approved Comprehensive Land Use Plan (CLUP) and Zoning Ordinance of the municipality',
    'A Preliminary Approval and Locational Clearance (PALC) and Development Permit (DP) are required prior to the establishment of a refilling gas station to ensure compliance with the approved Comprehensive Land Use Plan (CLUP) and Zoning Ordinance of the municipality.',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'SECURING MUNICIPAL STATISTICAL DATA/DOCUMENTS':
        return 'assets/pdf/mpdco/MPDC_SERVICE1.pdf';
      case 'SECURING ZONING CERTIFICATE AND ZONING CERTIFICATE FOR FREE PATENT':
        return 'assets/pdf/mpdco/MPDC_SERVICE2.pdf';
      case 'SECURING ZONING/LOCATIONAL CLEARANCE FOR BUSINESS PERMIT':
        return 'assets/pdf/mpdco/MPDC_SERVICE3.pdf';
      case 'SECURING LOCATIONAL CLEARANCE FOR BUILDING CONSTRUCTION':
        return 'assets/pdf/mpdco/MPDC_SERVICE4.pdf';
      case 'SECURING APPROVAL OF SUBDIVISION PLANS (SIMPLESUBDIVISION)':
        return 'assets/pdf/mpdco/MPDC_SERVICE5.pdf';
      case 'SECURING PRELIMINARY SUBDIVISION DEVELOPMENT PLAN (PSDP) / PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT':
        return 'assets/pdf/mpdco/MPDC_SERVICE6.pdf';
      case 'SECURING DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT':
        return 'assets/pdf/mpdco/MPDC_SERVICE7.pdf';
      case 'SECURING PERMIT FOR EXTENSION OF TIME TO DEVELOP FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT':
        return 'assets/pdf/mpdco/MPDC_SERVICE8.pdf';
      case 'SECURING CERTIFICATE OF COMPLETION FOR SPECIAL PROJECTS / SPECIAL USES: COMPLEX SUBDIVISION PROJECT':
        return 'assets/pdf/mpdco/MPDC_SERVICE9.pdf';
      case 'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: CELL SITES':
        return 'assets/pdf/mpdco/MPDC_SERVICE10.pdf';
      case 'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: FUNERAL ESTABLISHMENTS':
        return 'assets/pdf/mpdco/MPDC_SERVICE11.pdf';
      case 'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: POULTRY/PIGGERY':
        return 'assets/pdf/mpdco/MPDC_SERVICE12.pdf';
      case 'SECURING PRELIMINARY APPROVAL AND LOCATIONAL CLEARANCE (PALC) AND DEVELOPMENT PERMIT (DP) FOR SPECIAL PROJECTS / SPECIAL USES: REFILLING GAS STATION':
        return 'assets/pdf/mpdco/MPDC_SERVICE13.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL PLANNING & DEVELOPMENT COORDINATOR’S OFFICE (MPDCO)'),
      ),
      body: ListView.builder(
        itemCount: mpdcCards.length,
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
                      mpdcCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mpdcCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(mpdcCards[index]);
            return FlippingCard(
              frontText: mpdcCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF708090), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: mpdcCards[index].length > 50 ? 15 : 20, // Front text size
              backTextSize: backContents[index].length > 250 ? 12 : 15,// Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
