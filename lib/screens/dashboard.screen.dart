import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/screens.dart';
import 'package:symptom_tracker/shared/shared.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Dashboard Screen',
        actions: [
          IconButton(icon: Icon(Icons.close), onPressed: () => Get.offAll(HomeScreen())),
        ],
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
