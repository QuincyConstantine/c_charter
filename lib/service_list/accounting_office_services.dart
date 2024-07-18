import 'package:flutter/material.dart';
import '../pdf_display.dart'; // Import the PdfViewerScreen

class AccountingOfficeServicesScreen extends StatelessWidget {
  final List<String> accountingCards = [
    'ACCOUNTING OFFICE',
    'ADMINISTRATIVE SERVICES',
    '[1]PROCESSING OF CLAIMS(MUNICIPAL TRANSACTIONS)',
    'ISSUANCE OF CERTIFICATE OF INCOME TAX WITHHELD FROM EMPLOYEES',
    'ISSUANCE OF CERTIFICATE OF NET TAKE HOME PAY',
    '[2]PROCESSING OF CLAIMS(MUNICIPAL TRANSACTIONS)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounting Office'),
      ),
      body: ListView.builder(
        itemCount: accountingCards.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color set to white
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      accountingCards[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Text color set to black for contrast
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      accountingCards[1],
                      style: TextStyle(color: Colors.black54), // Text color set to black54 for contrast
                    ),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            return GestureDetector(
              onTap: () {
                String pdfPath;
                switch (accountingCards[index]) {
                  case '[1]PROCESSING OF CLAIMS(MUNICIPAL TRANSACTIONS)':
                    pdfPath = 'assets/pdf/accounting_office/ACCOUNTING_SERVICE1.pdf';
                    break;
                  case 'ISSUANCE OF CERTIFICATE OF INCOME TAX WITHHELD FROM EMPLOYEES':
                    pdfPath = 'assets/pdf/accounting_office/ACCOUNTING_SERVICE2.pdf';
                    break;
                  case 'ISSUANCE OF CERTIFICATE OF NET TAKE HOME PAY':
                    pdfPath = 'assets/pdf/accounting_office/ACCOUNTING_SERVICE3.pdf';
                    break;
                  case '[2]PROCESSING OF CLAIMS(MUNICIPAL TRANSACTIONS)':
                    pdfPath = 'assets/pdf/accounting_office/ACCOUNTING_SERVICE4.pdf';
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
                    color: Color(0xFF708090), // Background color set to "4169E1"
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        accountingCards[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Text color set to white for contrast
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Click to view details',
                        style: TextStyle(color: Colors.white70), // Text color set to white70 for contrast
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
