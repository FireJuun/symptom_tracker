import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        body: SafeArea(
          child: Center(
            child: Text('Home Screen'),
          ),
        ),
        drawer: Drawer(
          child: RaisedButton(
            child: Text('Do Not Click Here!'),
            onPressed: () {
              Get.snackbar('Reverse Psychology', 'Worked!');
              Get.back();
            },
          ),
        ),
      ),
    );
  }
}
