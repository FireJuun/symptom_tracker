import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SandboxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Obligatory FHIR Puns:', style: Get.theme.textTheme.headline4),
        SizedBox(height: 24),
        _sandbox(),
      ],
    );
  }

  Widget _sandbox() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
          Text('text', textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
