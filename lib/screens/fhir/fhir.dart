import 'package:fhir_r4/fhir_r4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/services/services.dart';
import 'package:symptom_tracker/shared/shared.dart';

class FhirView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SharedActionButton(
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
      ),
    );
  }
}
