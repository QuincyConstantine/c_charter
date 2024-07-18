import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class BudgetOfficeServicesScreen extends StatelessWidget {
  final List<String> budgetCards = [
    'MUNICIPAL BUDGET OFFICE',
    'ADMINISTRATIVE SERVICES',
    'REVIEW AND CONSOLIDATION OF BUDGET PROPOSALS OF DIFFERENT DEPARTMENT AND OFFICES OF THE LGU AND SUBMIT FINAL DRAFT OF ANNUAL BUDGET TO THE SANGGUNIANG BAYAN FOR APPROVAL',
    'ASSIST THE LOCAL CHIEF EXECUTIVE IN THE PREPARATION OF THE SUPPLEMENTAL BUDGET',
    'PREPARE REQUEST FOR REALIGNMENT/AUGMENTATION',
    'REVIEW OF BARANGAY ANNUAL/SUPPLEMENTAL BUDGET',
    'CERTIFY THE OBLIGATION REQUEST (ObR) AS TO EXISTENCE OF APPROPRIATIONS',
    'CERTIFY AS TO EXISTENCE OF APPROPRIATIONS FOR JOB ORDERS, TRAVEL REQUEST, AND PURCHASE/JOB REQUEST'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Office'),
      ),
      body: ListView.builder(
        itemCount: budgetCards.length,
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
                      budgetCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(budgetCards[1]),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (budgetCards[index]) {
                  case 'REVIEW AND CONSOLIDATION OF BUDGET PROPOSALS OF DIFFERENT DEPARTMENT AND OFFICES OF THE LGU AND SUBMIT FINAL DRAFT OF ANNUAL BUDGET TO THE SANGGUNIANG BAYAN FOR APPROVAL':
                    pdfPath = 'assets/pdf/budget_office/MBO_SERVICE1.pdf';
                    break;
                  case 'ASSIST THE LOCAL CHIEF EXECUTIVE IN THE PREPARATION OF THE SUPPLEMENTAL BUDGET':
                    pdfPath = 'assets/pdf/budget_office/MBO_SERVICE2.pdf';
                    break;
                  case 'PREPARE REQUEST FOR REALIGNMENT/AUGMENTATION':
                    pdfPath = 'assets/pdf/budget_office/MBO_SERVICE3.pdf';
                    break;
                  case 'REVIEW OF BARANGAY ANNUAL/SUPPLEMENTAL BUDGET':
                    pdfPath = 'assets/pdf/budget_office/MBO_SERVICE4.pdf';
                    break;
                  case 'CERTIFY THE OBLIGATION REQUEST (ObR) AS TO EXISTENCE OF APPROPRIATIONS':
                    pdfPath = 'assets/pdf/budget_office/MBO_SERVICE5.pdf';
                    break;
                  case 'CERTIFY AS TO EXISTENCE OF APPROPRIATIONS FOR JOB ORDERS, TRAVEL REQUEST, AND PURCHASE/JOB REQUEST':
                    pdfPath = 'assets/pdf/budget_office/MBO_SERVICE6.pdf';
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
                    color: Color(0xFF673AB7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        budgetCards[index],
                        style: TextStyle(
                          fontSize: 17,
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
