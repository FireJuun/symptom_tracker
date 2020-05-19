import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SandboxView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text('Obligatory FHIR Puns:', style: Get.theme.textTheme.headline4),
        ),
        _sandbox(),
      ],
    );
  }

  Widget _sandbox() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Text('FHIR Starter', textAlign: TextAlign.center),
          Text('FHIR and Rain', textAlign: TextAlign.center),
          Text('The FHIRplace', textAlign: TextAlign.center),
          Text('Ring of FHIR', textAlign: TextAlign.center),
          Text('FHIR Drills!', textAlign: TextAlign.center),
          Text("We didn't start the FHIR", textAlign: TextAlign.center),
          Text('Baptism by FHIR', textAlign: TextAlign.center),
          Text('Rapid FHIR', textAlign: TextAlign.center),
          Text('Please hold your FHIR until 1:30', textAlign: TextAlign.center),
          Text('FHIR in the hole!', textAlign: TextAlign.center),
          Text("Where there's smoke, there's FHIR", textAlign: TextAlign.center),
          Text('The roof, the roof, the roof is on FHIR', textAlign: TextAlign.center),
          Text('Fight FHIR with FHIR', textAlign: TextAlign.center),
          Text('Please don\'t FHIR me, I really need this gig!', textAlign: TextAlign.center),
          Text('Come on baby, light my FHIR', textAlign: TextAlign.center),
          Text('Jeff is on FHIR!', textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
