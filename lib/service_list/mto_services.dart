import 'package:flutter/material.dart';
import '../../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class MtoServicesScreen extends StatelessWidget {
  final List<String> mtoCards = [
    'MUNICIPAL TREASURER’S OFFICE',
    'ADMINISTRATIVE SERVICES',
    'ASSESSMENT OF BUSINESS TAX AND OTHER FEES',
    'PAYMENT OF BUSINESS TAX AND OTHER FEES (NEW BUSINESS)',
    'PAYMENT OF BUSINESS TAX AND OTHER FEES (EXISTING BUSINESS)',
    'PAYMENT OF REAL PROPERTY TAX',
    'ASSESSMENT ON TAX ON FISHERIES',
    'PAYMENT OF TAX ON FISHERIES',
    'PAYMENT OF COMMUNITY TAXES',
    'PAYMENT OF PROFESSIONAL TAXES',
    'PAYMENT OF AMUSEMENT TAXES',
    'PAYMENT OF SECRETARY’S FEE',
    'PAYMENT OF BUILDING PERMIT FEES AND CHARGES',
    'PAYMENT OF LCR CERTIFICATION FEES',
    'PAYMENT OF ASSESSOR’S FEES',
    'PAYMENT OF ZONING AND LOCATIONAL FEE',
    'PAYMENT OF MAYOR’S PERMIT',
    'PAYMENT OF POLICE CLEARANCE',
    'CLEARANCE FEE FOR SCRAP MATERIALS',
    'PAYMENT AND PURCHASE OF ACCOUNTABLE FORMS',
    'PAYMENT OF RENTALS FOR THE USE TUBIGON CULTURAL AND SPORTS CENTER AND ITS FACILITY',
    'PAYMENT OF RENTAL FOR MUN. LOT, BLOCK & STALLS IN THE TUBIGON COMMERCIAL COMPLEX AND MUNICIPAL LOTS',
    'PAYMENT OF INITIAL DEPOSIT FOR RENTAL OF LGU OWNED HEAVY EQUIPMENT AND TOOLS',
    'RENTAL OF LGU OWNED HEAVY EQUIPMENT AND TOOLS',
    'PAYMENT OF FINES AND PENALTIES',
    'RETIREMENT OF BUSINESS',
    'RELEASE OF SOCIAL PENSION AND SOCIAL BONUS FOR SENIOR CITIZENS',
    'RELEASE OF FINANCIAL ASSISTANCE',
    'RELEASE OF CHECK TO GOVERNMENT SUPPLIER',
    'OTHER COLLECTION OF FEES'
  ];

  final List<String> backContents = [
    'Details about MUNICIPAL TREASURER’S OFFICE',
    'Details about ADMINISTRATIVE SERVICES',
    'To determine the nature and condition of a business as reference for the license and permit fees and proportionate value that is subject to tax ',
    'Receive payment of business tax and other fees from persons who establish, operate, conduct or maintain their respective business within the municipality.',
    'Receive payment of business tax and other fees from persons who establish, operate, conduct or maintain their respective business within the municipality.',
    'Receive payment of Real Property Tax from persons who own real properties in the Municipality of Tubigon ',
    'To determine the nature and condition of a business/persons who owns/operates motorized bancas/boats for commercial fishing as reference for the license and permit fees and proportionate value that is subject to tax',
    'Receive payment of Tax on Fisheries ',
    'Receive payment of Community Taxes from a) Every inhabitants of the Philippines eighteen (18) years of age or over who has been regularly employed on a wage or salary basis for at least thirty (30 consecutive working days during any calendar year. b) An individual who is engaged in business or occupation. c) An in who owns a real property with an aggregate assessed value of One Thousand Pesos (1,000.00) or more. d) An individual who is required by law to file an Income Tax return. e) Every Corporation, no matter how created or organized, wither domestic or resident foreign engaged in or doing business in the municipality',
    'Receive payment of Professional Taxes from Professionals who have passed the bar examinations or any board or other examinations conducted by the Professional Regulation Commission (PRC)',
    'Receive payment of Amusement Tax from Proprietors, lessees, or operator of theaters, cinemas, concert halls, circuses, boxing stadia, and other places of amusement such as night clubs, cockpits & the like.',
    'Receive payment of Secretary’s Fee from every person requesting for copies of official records and documents from the offices of this Municipality',
    'Receive payment of Building Permit Fee from Individuals, firms, or corporations who would like to perform construction works on a particular property. This includes those who are looking to construct, alter, renovate, or demolish a property',
    'Receive payment from every person who avails the services rendered by the Municipal Civil Registrar',
    'Receive payment from every person who avails the services rendered by the Municipal Assessor’s Office',
    'Receive payment of Zoning and Locational Fee. A Locational Clearance/ Zoning Permit, is one of the prerequisite documents before a person can get a Building Permit. This is to ensure that construction of the building follows the Comprehensive Land Use Plan and Zoning Ordinance of the municipality.',
    'Receive payment of Mayor’s Permit from Individuals, group, businesses conducting business, trade or activity within the municipality for a certain period',
    'Receive payment of Police Clearance from every person who intend to secure a police clearance for different purposes',
    'Receive payment of Clearance Fee from every person who ships and transport scrap materials',
    'Receive payment for the purchase of accountable forms from all deputized Barangay Treasurer of this municipality',
    'Receive Payment of Rental for the use of Tubigon Cultural and Sports Center and its facility',
    'Receive payment for the rental of municipal lot, block and stalls from business/person who are legally and presently leasing/occupying the said spaces',
    'Receive payment of initial deposit for the rental of LGU owned heavy equipment’s and tools',
    'Receive payment for the rental of LGU owned heavy equipment’s and tools',
    'Receive payment of Fines and Penalties for violation of various Municipal Ordinances of this Municipality',
    'Any person natural or juridical subject to the tax on business who apply for termination or retirement of business',
    'Details about RELEASE OF SOCIAL PENSION AND SOCIAL BONUS FOR SENIOR CITIZENS',
    'Release of financial assistance to any person eligible for financial assistance as recommended by the MSWD',
    'All suppliers/bidders/businesses who are entitled payment for supplying, delivering products, goods and services to the Local Government Unit of Tubigon',
    'Any individual who will pay fees not included in the above services',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'ASSESSMENT OF BUSINESS TAX AND OTHER FEES':
        return 'assets/pdf/mto/MTO_SERVICES1.pdf';
      case 'PAYMENT OF BUSINESS TAX AND OTHER FEES (NEW BUSINESS)':
        return 'assets/pdf/mto/MTO_SERVICES2.pdf';
      case 'PAYMENT OF BUSINESS TAX AND OTHER FEES (EXISTING BUSINESS)':
        return 'assets/pdf/mto/MTO_SERVICES3.pdf';
      case 'PAYMENT OF REAL PROPERTY TAX':
        return 'assets/pdf/mto/MTO_SERVICES4.pdf';
      case 'ASSESSMENT ON TAX ON FISHERIES':
        return 'assets/pdf/mto/MTO_SERVICES5.pdf';
      case 'PAYMENT OF TAX ON FISHERIES':
        return 'assets/pdf/mto/MTO_SERVICES6.pdf';
      case 'PAYMENT OF COMMUNITY TAXES':
        return 'assets/pdf/mto/MTO_SERVICES7.pdf';
      case 'PAYMENT OF PROFESSIONAL TAXES':
        return 'assets/pdf/mto/MTO_SERVICES8.pdf';
      case 'PAYMENT OF AMUSEMENT TAXES':
        return 'assets/pdf/mto/MTO_SERVICES9.pdf';
      case 'PAYMENT OF SECRETARY’S FEE':
        return 'assets/pdf/mto/MTO_SERVICES10.pdf';
      case 'PAYMENT OF BUILDING PERMIT FEES AND CHARGES':
        return 'assets/pdf/mto/MTO_SERVICES11.pdf';
      case 'PAYMENT OF LCR CERTIFICATION FEES':
        return 'assets/pdf/mto/MTO_SERVICES12.pdf';
      case 'PAYMENT OF ASSESSOR’S FEES':
        return 'assets/pdf/mto/MTO_SERVICES13.pdf';
      case 'PAYMENT OF ZONING AND LOCATIONAL FEE':
        return 'assets/pdf/mto/MTO_SERVICES14.pdf';
      case 'PAYMENT OF MAYOR’S PERMIT':
        return 'assets/pdf/mto/MTO_SERVICES15.pdf';
      case 'PAYMENT OF POLICE CLEARANCE':
        return 'assets/pdf/mto/MTO_SERVICES16.pdf';
      case 'CLEARANCE FEE FOR SCRAP MATERIALS':
        return 'assets/pdf/mto/MTO_SERVICES17.pdf';
      case 'PAYMENT AND PURCHASE OF ACCOUNTABLE FORMS':
        return 'assets/pdf/mto/MTO_SERVICES18.pdf';
      case 'PAYMENT OF RENTALS FOR THE USE TUBIGON CULTURAL AND SPORTS CENTER AND ITS FACILITY':
        return 'assets/pdf/mto/MTO_SERVICES19.pdf';
      case 'PAYMENT OF RENTAL FOR MUN. LOT, BLOCK & STALLS IN THE TUBIGON COMMERCIAL COMPLEX AND MUNICIPAL LOTS':
        return 'assets/pdf/mto/MTO_SERVICES20.pdf';
      case 'PAYMENT OF INITIAL DEPOSIT FOR RENTAL OF LGU OWNED HEAVY EQUIPMENT AND TOOLS':
        return 'assets/pdf/mto/MTO_SERVICES21.pdf';
      case 'RENTAL OF LGU OWNED HEAVY EQUIPMENT AND TOOLS':
        return 'assets/pdf/mto/MTO_SERVICES22.pdf';
      case 'PAYMENT OF FINES AND PENALTIES':
        return 'assets/pdf/mto/MTO_SERVICES23.pdf';
      case 'RETIREMENT OF BUSINESS':
        return 'assets/pdf/mto/MTO_SERVICES24.pdf';
      case 'RELEASE OF SOCIAL PENSION AND SOCIAL BONUS FOR SENIOR CITIZENS':
        return 'assets/pdf/mto/MTO_SERVICES25.pdf';
      case 'RELEASE OF FINANCIAL ASSISTANCE':
        return 'assets/pdf/mto/MTO_SERVICES26.pdf';
      case 'RELEASE OF CHECK TO GOVERNMENT SUPPLIER':
        return 'assets/pdf/mto/MTO_SERVICES27.pdf';
      case 'OTHER COLLECTION OF FEES':
        return 'assets/pdf/mto/MTO_SERVICES28.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUNICIPAL TREASURER’S OFFICE'),
      ),
      body: ListView.builder(
        itemCount: mtoCards.length,
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
                      mtoCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(mtoCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(mtoCards[index]);
            return FlippingCard(
              frontText: mtoCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF000080), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: 20, // Front text size
              backTextSize: backContents[index].length > 250 ? 11 : 15, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
