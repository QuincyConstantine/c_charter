import 'package:flutter/material.dart';
import '../flipping_card.dart'; // Import the FlippingCard widget
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

  final List<String> backContents = [
    'Description for Municipal Budget Office',
    'Description for Administrative Services',
    'REVIEW AND CONSOLIDATION OF BUDGET PROPOSALS OF DIFFERENT DEPARTMENT AND OFFICES OF THE LGU AND SUBMIT FINAL DRAFT OF ANNUAL BUDGET TO THE SANGGUNIANG BAYAN FOR APPROVAL',
    'ASSIST THE LOCAL CHIEF EXECUTIVE IN THE PREPARATION OF THE SUPPLEMENTAL BUDGET',
    'Preparing request for realignment/augmentation',
    'The Municipal Budget Office is tasked to assist barangay officials in the preparation of their budgets to ensure compliance with mandatory obligation and budgetary requirements prior to the final review by the Sangguniang Bayan.',
    'The Municipal Budget Office certifies the existence of appropriation/allotment that has been legally made for the purpose. Office or Division: BUDGET OFFICE',
    'Certifying existence of appropriations for job orders, travel requests, and purchase/job requests'
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case 'REVIEW AND CONSOLIDATION OF BUDGET PROPOSALS OF DIFFERENT DEPARTMENT AND OFFICES OF THE LGU AND SUBMIT FINAL DRAFT OF ANNUAL BUDGET TO THE SANGGUNIANG BAYAN FOR APPROVAL':
        return 'assets/pdf/budget_office/MBO_SERVICE1.pdf';
      case 'ASSIST THE LOCAL CHIEF EXECUTIVE IN THE PREPARATION OF THE SUPPLEMENTAL BUDGET':
        return 'assets/pdf/budget_office/MBO_SERVICE2.pdf';
      case 'PREPARE REQUEST FOR REALIGNMENT/AUGMENTATION':
        return 'assets/pdf/budget_office/MBO_SERVICE3.pdf';
      case 'REVIEW OF BARANGAY ANNUAL/SUPPLEMENTAL BUDGET':
        return 'assets/pdf/budget_office/MBO_SERVICE4.pdf';
      case 'CERTIFY THE OBLIGATION REQUEST (ObR) AS TO EXISTENCE OF APPROPRIATIONS':
        return 'assets/pdf/budget_office/MBO_SERVICE5.pdf';
      case 'CERTIFY AS TO EXISTENCE OF APPROPRIATIONS FOR JOB ORDERS, TRAVEL REQUEST, AND PURCHASE/JOB REQUEST':
        return 'assets/pdf/budget_office/MBO_SERVICE6.pdf';
      default:
        return '';
    }
  }

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
            final pdfPath = _getPdfPath(budgetCards[index]);
            return FlippingCard(
              frontText: budgetCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF673AB7), // Retain original front color
              backColor: Colors.grey[200]!, // Default back color
              frontTextColor: Colors.white, // Front text color
              backTextColor: Colors.black, // Back text color
              frontTextSize: budgetCards[index].length > 50 ? 15 : 17, // Adjust font size based on length
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
