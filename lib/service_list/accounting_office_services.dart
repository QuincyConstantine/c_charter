import 'package:flutter/material.dart';
import '../flipping_card.dart';

class AccountingOfficeServicesScreen extends StatefulWidget {
  @override
  _AccountingOfficeServicesScreenState createState() => _AccountingOfficeServicesScreenState();
}

class _AccountingOfficeServicesScreenState extends State<AccountingOfficeServicesScreen> {
  final List<String> accountingCards = [
    'ACCOUNTING OFFICE',
    'ADMINISTRATIVE SERVICES',
    '[1]PROCESSING OF CLAIMS(MUNICIPAL TRANSACTIONS)',
    'ISSUANCE OF CERTIFICATE OF INCOME TAX WITHHELD FROM EMPLOYEES',
    'ISSUANCE OF CERTIFICATE OF NET TAKE HOME PAY',
    '[2]PROCESSING OF CLAIMS(MUNICIPAL TRANSACTIONS)'
  ];

  final List<String> backContents = [
    'Description for Accounting Office',
    'Description for Administrative Services',
    'To safeguard the use and disposition of the Municipal Government\'s assets and to determine its liabilities from claims, pre-audit is undertaken by the Municipal Accountant to determine that all necessary supporting documents of vouchers/ claims are submitted',
    'Government employees income taxes are withheld pursuant to the National Internal Revenue Code. The Certificate of Compensation Payment/Tax withheld is annually given to show proof that tax due to employees had been paid.',
    'Employees shall secure from the Municipal Accounting Office the certificate of net take home pay for whatever purpose it may serve them.',
    'All claims shall be approved by the Punong Barangay (PB) and certified as to validity, propriety and legality of the claim by the Municipal Accountant. In case of claim chargeable against SK Fund, the SK Chairman shall initial under the name of the PB. All disbursements shall be covered with duly processed and approved DVs/payrolls. The BT shall be responsible for paying claims against the Barangay',
  ];

  String _getPdfPath(String cardTitle) {
    switch (cardTitle) {
      case '[1]PROCESSING OF CLAIMS(MUNICIPAL TRANSACTIONS)':
        return 'assets/pdf/accounting_office/ACCOUNTING_SERVICE1.pdf';
      case 'ISSUANCE OF CERTIFICATE OF INCOME TAX WITHHELD FROM EMPLOYEES':
        return 'assets/pdf/accounting_office/ACCOUNTING_SERVICE2.pdf';
      case 'ISSUANCE OF CERTIFICATE OF NET TAKE HOME PAY':
        return 'assets/pdf/accounting_office/ACCOUNTING_SERVICE3.pdf';
      case '[2]PROCESSING OF CLAIMS(MUNICIPAL TRANSACTIONS)':
        return 'assets/pdf/accounting_office/ACCOUNTING_SERVICE4.pdf';
      default:
        return '';
    }
  }

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
                  color: Colors.white,
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
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      accountingCards[1],
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            );
          } else if (index != 1) {
            final pdfPath = _getPdfPath(accountingCards[index]);
            return FlippingCard(
              frontText: accountingCards[index],
              backText: backContents[index], // Set the unique back content here
              pdfPath: pdfPath.isNotEmpty ? pdfPath : null,
              frontColor: Color(0xFF708090), // Set front color
              backColor: Colors.grey[200]!, // Set back color
              frontTextSize: 20.0, // Front text size
              backTextSize: 13.0,  // Back text size
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
