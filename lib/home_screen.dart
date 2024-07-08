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
