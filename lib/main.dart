import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: SafeArea(
          child: Center(
            child: Text('Home Screen'),
          ),
        ),
      ),
    );
  }
}
