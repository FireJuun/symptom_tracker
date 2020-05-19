import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/services/services.dart';
import 'package:symptom_tracker/shared/shared.dart';
import 'package:url_launcher/url_launcher.dart';

class FhirView extends StatelessWidget {
  final lastName = TextEditingController(text: '');
  final firstName = TextEditingController(text: '');

  @override
  void dispose() {
    lastName.dispose();
    firstName.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: <Widget>[
            _nameContainer(lastName, 'Last name'),
            _nameContainer(firstName, 'First name'),
          ],
        ),
        _linkContainer(firstName, lastName),
        _patient(firstName, lastName),
        _fhir,
      ],
    );
  }
}

Container _linkContainer(
        TextEditingController first, TextEditingController last) =>
    Container(
      child: InkWell(
        child: Text(
          'Click to see new patient',
          style: TextStyle(
            color: Colors.purple,
            fontSize: 18,
            decoration: TextDecoration.underline,
          ),
        ),
        onTap: () async => await launch('http://hapi.fhir.org/baseR4/'
            'Patient?given=${first.text}&family=${last.text}&_pretty=true'),
      ),
    );

Container _nameContainer(TextEditingController name, String text) => Container(
      width: 200,
      child: TextField(
        controller: name,
        decoration: InputDecoration(hintText: text),
      ),
    );

SharedActionButton _patient(
        TextEditingController first, TextEditingController last) =>
    SharedActionButton(
      title: 'Create Patient',
      onPressed: () async {
        await FhirService().createPatient(first.text, last.text);
      },
    );

SharedActionButton _fhir = SharedActionButton(
  title: 'Get FHIR data',
  onPressed: () async {
    List<Quantity> data = await FhirService().getResponse();
    Get.defaultDialog(
        content: Container(
      height: 500,
      width: 300,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ...data.map((f) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('${f.value}'),
                Text('${f.unit}'),
              ],
            );
          })
        ],
      ),
    ));
    print(data);
  },
);
