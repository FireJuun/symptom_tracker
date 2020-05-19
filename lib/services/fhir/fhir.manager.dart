import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'aidbox.service.dart';
import 'hapi.service.dart';

class FhirManager extends GetController {
  AidboxService _aidbox = AidboxService();
  HapiService _hapi = HapiService();

  bool isBusy = false;

  final _lastName = TextEditingController();
  final _firstName = TextEditingController();

  TextEditingController get lastName => _lastName;
  TextEditingController get firstName => _firstName;

  Future aidboxVitals() async {
    isBusy = true;
    update(this);
    List<Quantity> data = await _aidbox.getResponse();
    isBusy = false;
    update(this);
    Get.defaultDialog(
      content: Container(
        height: 500,
        width: 300,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            ...data.map(
              (f) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('${f.value}'),
                    Text('${f.unit}'),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Future hapiCreate() async {
    isBusy = true;
    update(this);
    var response = await _hapi.createPatient(_firstName.text, _lastName.text);
    (response.statusCode == 201)
        ? Get.rawSnackbar(title: 'Success', message: 'Patient ${_firstName.text} ${_lastName.text} created')
        : Get.snackbar('Failure', 'An error occurred', snackPosition: SnackPosition.BOTTOM);
    isBusy = false;
    update(this);
  }

  Future hapiSearch() async {
    isBusy = true;
    update(this);
    await launch('http://hapi.fhir.org/baseR4/'
        'Patient?given=${_firstName.text}&family=${_lastName.text}&_pretty=true');
    isBusy = false;
    update(this);
  }
}
