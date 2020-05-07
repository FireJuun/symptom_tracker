import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Home Screen'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Home Screen'),
        ),
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
      floatingActionButton: FloatingActionButton(onPressed: () => Get.to(DashboardScreen())),
    );
  }
}
