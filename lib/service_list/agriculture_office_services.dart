import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget

class AgricultureOfficeServicesScreen extends StatefulWidget {
  @override
  _AgricultureOfficeServicesScreenState createState() => _AgricultureOfficeServicesScreenState();
}

class _AgricultureOfficeServicesScreenState extends State<AgricultureOfficeServicesScreen> {
  final List<String> agricultureCards = [
    'MUNICIPAL AGRICULTURE OFFICE',
    'ADMINISTRATIVE SERVICES',
    'ISSUANCE OF INSPECTION CLEARANCE ON FISHING GEAR',
    'ISSUANCE OF AUXILIARY INVOICE',
    'FISHERFOLK REGISTRATION (FishR)',
    'ANIMAL TREATMENT/VACCINATION/DEWORMING/CASTRATION/ARTIFICIAL INSEMINATION',
    'ISSUANCE OF ANIMAL HEALTH CERTIFICATE FOR SWINE AND CERTIFICATE OF VACCINATION FOR DOG/POULTRY/GAME FOWL',
    'DISTRIBUTION OF REGISTERED, HYBRID AND CERTIFIED RICE SEEDS AND OTHER CEREALS',
    'DISTRIBUTION OF VEGETABLE SEEDS, MONGO SEEDS AND OTHER HIGH VALUE CROPS PLANTING MATERIALS',
    'INTEGRATED PEST MANAGEMENT',
    'CROPS, LIVESTOCK, FISHERIES – FISHING BOATS, ACCIDENT DISMEMBERMENT SECURITY SCHEME (ADS2) AND AGRICULTURAL PRODUCERS PROTECTION PLAN (AP3) INSURANCE: PHILIPPINE CROP INSURANCE CORPORATION (PCIC)'
  ];

  final List<String> backContents = [
    'Description for Municipal Agriculture Office',
    'Description for Administrative Services',
    'All fishing vessel 3 tons below operating within municipal waters are required to secure inspection clearance pertaining to fishery license that is based on Municipal Ordinance No. 2015-01-408, Sec. 56. The clearance can be obtained from the Municipal Agriculture Office.',
    'All fishery products shipped at Tubigon wharf are required to secure Auxiliary Invoice pertaining to Shipment Permit that is based on the Municipal Ordinance No. 2015-01- 408, Sec. 74. The invoice can be obtained from the Municipal Agriculture Office',
    'All municipal fisherfolks (source of livelihood related to fishery) are required to register pertaining to Fisherfolks Registration (FishR) – National Program for Municipal Fisherfolk Registration that is based on RA 8550, Philippine Code of 1998, Sec. 19. The registration can be obtained from the Municipal Agriculture Office',
    'All livestock and poultry raisers and dog owners can avail the services depending on the needs of the animals. Animal treatment refers to the medication of a particular livestock and poultry illnesses and disorders, vaccination signifies animal disease prevention/all dogs are required to be vaccinated pertaining to the Provincial Ordinance No. 2007-012 – Strengthening the Bohol Rabies Prevention and Eradication Program, deworming denotes management against external and internal parasites, castration is the extraction of animal testicles and Artificial Insemination (AI) is the insertion of semens to native/lower breed animals from a high breed large animal and goat.',
    'All shipment of swine required to furnish animal health certificate and certificate of vaccination for dogs, poultry and game fowls inorder to acquire veterinary health certificate from the Office of the Provincial Veterinarian for the issuance of shipping permit for the local transport of live animals, animal products and by-products pertaining to Memorandum Circular No. 26 Series of 2017 of the Bureau of Animal Industry (BAI). The issuance of such certificate can be obtained from the Municipal Agriculture Office.',
    'All registered farmers on Registry System for Basic Sector in Agriculture (RSBSA) can avail either Registered, Hybrid, Certified Rice Seeds and other cereals from the Department of Agriculture (DA) and Provincial Government Rice and Other Cereals Programs. Non-registered farmers shall fill-up the RSBSA form before availing the program. The distribution can be obtained from the Municipal Agriculture Office.',
    'All households and schools can avail either vegetable seeds, mongo seeds and other high value crops planting materials from the Department of Agriculture (DA), Provincial and Local Government High Value Crops Programs. The distribution can be obtained from the Municipal Agriculture Office.',
    'All farmers can avail technical assistance, control measures guidelines and available pest and diseases repellants from the Department of Agriculture (DA), Provincial and Local Government Integrated IPM Programs. The services can be obtained from the Municipal Agriculture Office.',
    'All registered farmers and fisherfolks on Registry System for Basic Sector in Agriculture (RSBSA) can avail free insurances and non-registered shall fill-up the RSBSA form before availing the services except ADS2 and AP3 has a particular payment. Insurance forms can be filed at the Municipal Agriculture Office.'
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'ISSUANCE OF INSPECTION CLEARANCE ON FISHING GEAR':
        return 'assets/pdf/agriculture_office/MAO_SERVICE1.pdf';
      case 'ISSUANCE OF AUXILIARY INVOICE':
        return 'assets/pdf/agriculture_office/MAO_SERVICE2.pdf';
      case 'FISHERFOLK REGISTRATION (FishR)':
        return 'assets/pdf/agriculture_office/MAO_SERVICE3.pdf';
      case 'ANIMAL TREATMENT/VACCINATION/DEWORMING/CASTRATION/ARTIFICIAL INSEMINATION':
        return 'assets/pdf/agriculture_office/MAO_SERVICE4.pdf';
      case 'ISSUANCE OF ANIMAL HEALTH CERTIFICATE FOR SWINE AND CERTIFICATE OF VACCINATION FOR DOG/POULTRY/GAME FOWL':
        return 'assets/pdf/agriculture_office/MAO_SERVICE5.pdf';
      case 'DISTRIBUTION OF REGISTERED, HYBRID AND CERTIFIED RICE SEEDS AND OTHER CEREALS':
        return 'assets/pdf/agriculture_office/MAO_SERVICE6.pdf';
      case 'DISTRIBUTION OF VEGETABLE SEEDS, MONGO SEEDS AND OTHER HIGH VALUE CROPS PLANTING MATERIALS':
        return 'assets/pdf/agriculture_office/MAO_SERVICE7.pdf';
      case 'INTEGRATED PEST MANAGEMENT':
        return 'assets/pdf/agriculture_office/MAO_SERVICE8.pdf';
      case 'CROPS, LIVESTOCK, FISHERIES – FISHING BOATS, ACCIDENT DISMEMBERMENT SECURITY SCHEME (ADS2) AND AGRICULTURAL PRODUCERS PROTECTION PLAN (AP3) INSURANCE: PHILIPPINE CROP INSURANCE CORPORATION (PCIC)':
        return 'assets/pdf/agriculture_office/MAO_SERVICE9.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Municipal Agriculture Office'),
      ),
      body: ListView.builder(
        itemCount: agricultureCards.length,
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
                      agricultureCards[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(agricultureCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(agricultureCards[index]);
            return FlippingCard(
              frontText: agricultureCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF4F7942), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: agricultureCards[index].length > 50 ? 15 : 20, // Adjust font size based on length
              backTextSize: backContents[index].length > 300 ? 10 : 12, // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
