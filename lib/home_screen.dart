import 'package:flutter/material.dart';
import 'custom_navbar.dart'; // Import the custom navbar

import '../office_list/accounting_office_home.dart';
import '../office_list/assessor_office_home.dart';
import '../office_list/budget_office_home.dart';
import '../office_list/bplo_home.dart';
import '../office_list/engineering_office_home.dart';
import '../office_list/eswmo_home.dart';
import '../office_list/health_office_home.dart';
import '../office_list/agriculture_office_home.dart';
import '../office_list/mdrrmo_home.dart';
import '../office_list/hrmo_home.dart';
import '../office_list/mcr_office_home.dart';
import '../office_list/mlgoo_home.dart';
import '../office_list/mayors_office_home.dart';
import '../office_list/mpdc_office_home.dart';
import '../office_list/menro_home.dart';
import '../office_list/sb_home.dart';
import '../office_list/osca_home.dart';
import '../office_list/mswdo_home.dart';
import '../office_list/stac_office_home.dart';
import '../office_list/tollroads_office_home.dart';
import '../office_list/tch_office_home.dart';
import '../office_list/waterworks_office_home.dart';
import '../office_list/mto_home.dart';
import '../pdf_display.dart'; // Import the PDF Viewer

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width * 0.95;

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey[200], // Light gray background
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomNavBar(
            scaffoldKey: _scaffoldKey,
            width: cardWidth, // Adjust width here
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.account_balance),
                      title: Text('Vision, Mission'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyPdfViewer(pdfPath: 'assets/pdf/vision_mission/visionMission.pdf'),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.account_box_outlined),
                      title: Text('Citizen Charter Handbook'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyPdfViewer(pdfPath: 'assets/pdf/handbook/handbook.pdf'),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.info_outline),
                      title: Text('App Info'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyPdfViewer(pdfPath: 'assets/pdf/about_app/CC_AboutApp.pdf'),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.developer_board),
                      title: Text('Developers'),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: ListView(
                                children: [
                                  Text(
                                    'BISU - CALAPE',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Gardson Binasbas',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Contact Number: 09655660067',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Email: gardson.binasbas@bisu.edu.ph',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Jacob Peter D. Pondoyo',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Contact Number: 09466135784',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Email: jacobpeter.pondoyo@bisu.edu.ph',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hector F. Logroño',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Contact Number: 09357943051',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Email: hector.logrono@bisu.edu.ph',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/bisuXtubigon.png', // Replace with your school logo asset path
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(height: 0), // Space between the logos and text
                  Text(
                    'BISU - CALAPE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'All rights reserved',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20), // Optional: Add some space at the bottom
                ],
              ),
            ],
          ),
        ),
          body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: AccountingOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: AgricultureOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: AssessorOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: BudgetOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: BploHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: MdrrmoHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: EswmoHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: EngineeringOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: MenroHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: HealthOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: HrmoHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: McrHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: MayorsOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: MlgooHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: MpdcHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: SbHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: OscaHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: MswdoHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: StacOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: TollroadsOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: MtoHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: TchOfficeHome(),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  child: SizedBox(
                    height: 150,
                    width: cardWidth,
                    child: WaterworksOfficeHome(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(HomeScreen());
}
