import 'package:flutter/material.dart';

class CheckinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Checkin Screen'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Checkin Screen'),
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () => Get.to(DashboardScreen())),
    );
  }
}
