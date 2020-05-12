import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
      child: StreamBuilder(
        stream: Firestore.instance.collection('collection').document('document').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          // find the field named 'field', return this
          Map<String, dynamic> documentFields = snapshot.data.data;
          return Text(documentFields['field'], textAlign: TextAlign.center);
        },
      ),
    );
  }
}
