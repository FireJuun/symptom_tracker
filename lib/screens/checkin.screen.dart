import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/screens/screens.dart';
import 'package:symptom_tracker/shared/action_button.dart';
import 'package:symptom_tracker/shared/shared.dart';

class CheckinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Check-in',
        actions: [
          IconButton(icon: Icon(Icons.close), onPressed: () => Get.offAll(HomeScreen())),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 48),
          _buildHeader(),
          SizedBox(height: 24),
          Text('text'),
          SizedBox(height: 24),
          SharedActionButton(
            title: 'Submit',
            onPressed: () {
              Get.snackbar('Check-in complete', 'Be sure to check-in tomorrow as well!');
              Get.back();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Text(
          'Please select your symptoms',
          style: Get.theme.textTheme.headline4,
        ),
        SizedBox(height: 8),
        Text(
          'Yesterday, you had cough, short of breath, and body aches',
          style: Get.theme.textTheme.headline5,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
