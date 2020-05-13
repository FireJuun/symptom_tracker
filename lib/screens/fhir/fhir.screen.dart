import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/fhir/fhir.dart';
import 'package:symptom_tracker/screens/fhir/firebase.dart';
import 'package:symptom_tracker/screens/fhir/sandbox.dart';
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
          SizedBox(height: 24),
          Expanded(
            child: Container(
              color: Get.theme.unselectedWidgetColor,
              child: TabBarView(children: [
                SandboxView(),
                FirebaseView(),
                FhirView(),
              ]),
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
          stream: fbService.fbHelloStream,
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
