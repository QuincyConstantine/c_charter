import 'package:flutter/material.dart';
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
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (hrmoCards[index]) {
                  case 'ISSUANCE OF CERTIFIED COPIES OF SERVICE RECORDS':
                    pdfPath = 'assets/pdf/hrmo/HRMO_SERVICE1.pdf';
                    break;
                  case 'ISSUANCE OF CERTIFICATE OF EMPLOYMENT':
                    pdfPath = 'assets/pdf/hrmo/HRMO_SERVICE2.pdf';
                    break;
                  case  'CERTIFICATION OF LEAVE CREDITS' :
                    pdfPath = 'assets/pdf/hrmo/HRMO_SERVICE3.pdf';
                    break;
                  case  'ISSUANCE OF NOSA (Notice of Salary Adjustment)' :
                    pdfPath = 'assets/pdf/hrmo/HRMO_SERVICE4.pdf';
                    break;
                  case  'ISSUANCE OF NOSI (Notice of Step Increment)' :
                    pdfPath = 'assets/pdf/hrmo/HRMO_SERVICE5.pdf';
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
                        hrmoCards[index],
                        style: TextStyle(
                          fontSize: 20,
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
