import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/fhir/fhir.dart';
import 'package:symptom_tracker/screens/fhir/firebase.dart';
import 'package:symptom_tracker/screens/fhir/sandbox.dart';
import 'package:symptom_tracker/screens/screens.dart';
import 'package:symptom_tracker/services/services.dart';

import 'package:symptom_tracker/shared/shared.dart';

class FhirScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: SharedAppBar(
          title: 'FHIR',
          actions: [
            IconButton(icon: Icon(Icons.close), onPressed: () => Get.offAll(HomeScreen())),
          ],
        ),
        body: _buildBody(),
        bottomNavigationBar: TabBar(tabs: [
          Tab(icon: Icon(FlutterIcons.md_bonfire_ion), text: 'Sandbox'),
          Tab(icon: Icon(FlutterIcons.firebase_mco), text: 'Firebase'),
          Tab(icon: Icon(FlutterIcons.fire_mco), text: 'FHIR'),
        ]),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        children: <Widget>[
          _firebaseStream(),
          Expanded(
            child: Container(
              color: Get.theme.unselectedWidgetColor,
              child: TabBarView(
                children: [
                  SandboxView(),
                  FirebaseView(),
                  FhirView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _firebaseStream() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: GetBuilder<FirebaseService>(
        init: FirebaseService(),
        builder: (fbService) => StreamBuilder(
          stream: fbService.fbStreamHello,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }

            // find the field named 'field', return this
            Map<String, dynamic> documentFields = snapshot.data.data;
            return Text(documentFields['field'], textAlign: TextAlign.center);
          },
        ),
      ),
    );
  }
}
