import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/screens.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Dashboard Screen'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Dashboard Screen'),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => Get.to(CheckinScreen())),
    );
  }
}
