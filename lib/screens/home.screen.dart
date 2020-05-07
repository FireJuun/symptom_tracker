import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/screens.dart';
import 'package:symptom_tracker/shared/app_bar.dart';

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
          _buildActionButton(
            title: 'Dashboard',
            onPressed: () => Get.to(DashboardScreen()),
          ),
          _buildActionButton(
            title: 'Check-in',
            onPressed: () => Get.to(CheckinScreen()),
          ),
          _buildActionButton(title: 'FHIR'),
          Text('Obligatory FHIR pun'),
        ],
      ),
    );
  }

  Widget _buildActionButton({@required String title, void Function() onPressed}) {
    return RaisedButton(child: Text(title), onPressed: onPressed);
  }
}
