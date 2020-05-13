import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/screens.dart';
import 'package:symptom_tracker/shared/shared.dart';

import 'screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'Hello AMIA'),
      body: SafeArea(
        child: _buildBody(),
      ),
      drawer: Drawer(
        child: RaisedButton(
          child: Text('Click Here!'),
          onPressed: () {
            Get.snackbar('you clicked', 'the button');
            Get.back();
          },
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SharedActionButton(
            title: 'Dashboard',
            onPressed: () => Get.to(DashboardScreen()),
          ),
          SharedActionButton(
            title: 'Check-in',
            onPressed: () => Get.to(CheckinScreen()),
          ),
          SharedActionButton(
            title: 'FHIR',
            onPressed: () => Get.to(FhirScreen()),
          ),
          Text('Obligatory FHIR pun'),
        ],
      ),
    );
  }
}
