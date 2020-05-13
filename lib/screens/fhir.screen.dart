import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/services/services.dart';

import 'package:symptom_tracker/shared/shared.dart';

class FhirScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'FHIR',
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        children: <Widget>[
          _firebaseStream(),
          SizedBox(height: 24),
          Text('Obligatory FHIR Puns:', style: Get.theme.textTheme.headline4),
          SizedBox(height: 24),
          _sandbox(),
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

  Widget _sandbox() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
