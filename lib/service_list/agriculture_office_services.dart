import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class AgricultureOfficeServicesScreen extends StatelessWidget {
  final List<String> agricultureCards = [
    'MUNICIPAL AGRICULTURE OFFICE',
    'ADMINISTRATIVE SERVICES',
    'ISSUANCE OF INSPECTION CLEARANCE ON FISHING GEAR',
    'ISSUANCE OF AUXILIARY INVOICE',
    'FISHERFOLK REGISTRATION (FishR)',
    'ANIMALTREATMENT/VACCINATION/DEWORMING/CASTRATION/ARTIFICIAL INSEMINATION',
    'ISSUANCE OF ANIMAL HEALTH CERTIFICATE FOR SWINE AND CERTIFICATE OF VACCINATION FOR DOG/POULTRY/GAME FOWL',
    'DISTRIBUTION OF REGISTERED, HYBRID AND CERTIFIED RICE SEEDS AND OTHER CEREALS',
    'DISTRIBUTION OF VEGETABLE SEEDS, MONGO SEEDS AND OTHER HIGH VALUE CROPS PLANTING MATERIALS',
    'INTEGRATED PEST MANAGEMENT',
    'CROPS, LIVESTOCK, FISHERIES – FISHING BOATS, ACCIDENT DISMEMBERMENT SECURITY SCHEME (ADS2) AND AGRICULTURAL PRODUCERS PROTECTION PLAN (AP3) INSURANCE: PHILIPPINE CROP INSURANCE CORPORATION(PCIC)'
  ];

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
            double fontSize = agricultureCards[index].length > 50 ? 15 : 20; // Adjust font size based on length
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (agricultureCards[index]) {
                  case 'ISSUANCE OF INSPECTION CLEARANCE ON FISHING GEAR':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE1.pdf';
                    break;
                  case 'ISSUANCE OF AUXILIARY INVOICE':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE2.pdf';
                    break;
                  case 'FISHERFOLK REGISTRATION (FishR)':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE3.pdf';
                    break;
                  case 'ANIMALTREATMENT/VACCINATION/DEWORMING/CASTRATION/ARTIFICIAL INSEMINATION':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE4.pdf';
                    break;
                  case 'ISSUANCE OF ANIMAL HEALTH CERTIFICATE FOR SWINE AND CERTIFICATE OF VACCINATION FOR DOG/POULTRY/GAME FOWL':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE5.pdf';
                    break;
                  case 'DISTRIBUTION OF REGISTERED, HYBRID AND CERTIFIED RICE SEEDS AND OTHER CEREALS':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE6.pdf';
                    break;
                  case 'DISTRIBUTION OF VEGETABLE SEEDS, MONGO SEEDS AND OTHER HIGH VALUE CROPS PLANTING MATERIALS':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE7.pdf';
                    break;
                  case 'INTEGRATED PEST MANAGEMENT':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE8.pdf';
                    break;
                  case 'CROPS, LIVESTOCK, FISHERIES – FISHING BOATS, ACCIDENT DISMEMBERMENT SECURITY SCHEME (ADS2) AND AGRICULTURAL PRODUCERS PROTECTION PLAN (AP3) INSURANCE: PHILIPPINE CROP INSURANCE CORPORATION(PCIC)':
                    pdfPath = 'assets/pdf/agriculture_office/MAO_SERVICE9.pdf';
                    break;
                  default:
                    pdfPath = '';
                }

                if (pdfPath.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPdfViewer(
                        pdfPath: pdfPath,
                      ),
                    ),
                  );
                } else {
                  // Define your navigation logic here for other service cards if needed
                }
              },
              child: Card(
                margin: EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xFF000080),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        agricultureCards[index],
                        style: TextStyle(
                          fontSize: fontSize, // Use conditional font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Click to view details',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
