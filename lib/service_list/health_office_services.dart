import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
import '../pdf_display.dart'; // Import the PdfViewerScreen

class HealthOfficeServicesScreen extends StatelessWidget {
  final List<String> healthCards = [
    'MUNICIPAL HEALTH OFFICE',
    'ADMINISTRATIVE SERVICES',
    'AVAILING OF OUTPATIENT CONSULTATION',
    'AVAILING OF IMMUNIZATION SERVICES (BCG)',
    'AVAILING OF FAMILY PLANNING SERVICES',
    'AVAILING OF LABORATORY EXAMINATIONS',
    'AVAILING OF ANTI-TUBERCULOSIS DRUGS',
    'AVAILING OF MATERNAL HEALTH SERVICES',
    'AVAILING OF LEPROSY EXAMINATION/TREATMENT',
    'AVAILING OF ANIMAL BITE TREATMENT',
    'AVAILING OF COUNSELING ON NUTRITION',
    'PROVIDE PRENATAL EXAMINATION',
    'ISSUANCE OF HEALTH RELATED CERTIFICATIONS',
    'SECURING A HEALTH CERTIFICATE/CARD/PERMIT',
    'FILLING OF SANITATION NUISANCE AND COMPLAINT'
  ];

  final List<String> backContents = [
    'Details about Municipal Health Office',
    'Details about Administrative Services',
    'The purpose of this service is to diagnose and treat illnesses and give appropriate medical services.',
    'About the Service: To Prevent Acquisition Of Diseases.',
    'About the Service: Family planning service provides not only family planning commodities but also includes Basic Family Planning Education, Information on different Family Planning Methods as well as Family Planning Counseling to all women of reproductive age geared towards responsible parenthood.',
    'About the Service: The Municipal Health Office provides laboratory services to every constituents of the municipality. The objectives of this service are to aid the clinician in arriving to a proper diagnosis. ',
    'About the Service: Tuberculosis has burdened the country for so many years .presently, it is still a major health hazard .The Municipal Health Office manages an anti-tuberculosis program. It is geared toward preventing and controlling the spread/transmission of tuberculosis (TB) in the community. the main objective is to identify and treats patients with TB by providing anti-tuberculosis medication for free using the DOTS.',
    'About the Service: The Municipal Health Office ensures safe motherhood and deliveries to healthy babies at health facilities.',
    'About the Service: To ensure the provision of a comprehensive, integrated quality leprosy services at all levels of health caret',
    'About the Service: To ensure the provision of first aid measures taken if a person is bitten by an animal. Medical care should be sought in case the person bitten needs a tetanus shot or rabies exposure treatment',
    'About the Service: To Nutrition Office are committed to provide the highest possible service performance and pledge to achieve well nourished individuals.',
    'About the Service: To provide regular check-ups that allow doctors or midwives to treat and prevent potential health problems throughout the course of the pregnancy and to promote healthy lifestyles that benefit both mother and child..',
    'About the Service: To ensure optimum health, any person/individual employed at any business establishments that are operating within the municipality are required to secure a health certificate and concern citizen may request the burial transfer and exhumation permit. This certificate is issued by the Municipal Health Office.',
    'About the Service: All business establishments operating within the municipality for public patronage are required to secure a Sanitary permit pertaining to health and sanitation that are based on the Implementing Rules and Regulations stated in IRR of PD 856 and Municipal Resolution No. 2005-09-228. The permit can be obtained from the Municipal Health Office.',
    'About the Service: The Sanitary nuisance and complaint ensures the investigation and abatement of various types of sanitary nuisances reported by citizens and other government agencies to the Municipal Health Office. This program investigates sanitary nuisances specifically related to food mishandling, watercontamination, mosquito breeding and environmental odors hazardous to health.',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'AVAILING OF OUTPATIENT CONSULTATION':
        return 'assets/pdf/health_office/MHO_SERVICE1.pdf';
      case 'AVAILING OF IMMUNIZATION SERVICES (BCG)':
        return 'assets/pdf/health_office/MHO_SERVICE2.pdf';
      case 'AVAILING OF FAMILY PLANNING SERVICES':
        return 'assets/pdf/health_office/MHO_SERVICE3.pdf';
      case 'AVAILING OF LABORATORY EXAMINATIONS':
        return 'assets/pdf/health_office/MHO_SERVICE4.pdf';
      case 'AVAILING OF ANTI-TUBERCULOSIS DRUGS':
        return 'assets/pdf/health_office/MHO_SERVICE5.pdf';
      case 'AVAILING OF MATERNAL HEALTH SERVICES':
        return 'assets/pdf/health_office/MHO_SERVICE6.pdf';
      case 'AVAILING OF LEPROSY EXAMINATION/TREATMENT':
        return 'assets/pdf/health_office/MHO_SERVICE7.pdf';
      case 'AVAILING OF ANIMAL BITE TREATMENT':
        return 'assets/pdf/health_office/MHO_SERVICE8.pdf';
      case 'AVAILING OF COUNSELING ON NUTRITION':
        return 'assets/pdf/health_office/MHO_SERVICE9.pdf';
      case 'PROVIDE PRENATAL EXAMINATION':
        return 'assets/pdf/health_office/MHO_SERVICE10.pdf';
      case 'ISSUANCE OF HEALTH RELATED CERTIFICATIONS':
        return 'assets/pdf/health_office/MHO_SERVICE11.pdf';
      case 'SECURING A HEALTH CERTIFICATE/CARD/PERMIT':
        return 'assets/pdf/health_office/MHO_SERVICE12.pdf';
      case 'FILLING OF SANITATION NUISANCE AND COMPLAINT':
        return 'assets/pdf/health_office/MHO_SERVICE13.pdf';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Municipal Health Office'),
      ),
      body: ListView.builder(
        itemCount: healthCards.length,
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
                      healthCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(healthCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(healthCards[index]);
            return FlippingCard(
              frontText: healthCards[index],
              backText: backContents[index],
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF87CEEB), // Original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: healthCards[index].length > 50 ? 14 : 20, // Front text size
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
