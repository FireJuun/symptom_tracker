import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/services/services.dart';
import 'package:symptom_tracker/shared/shared.dart';

class FhirView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FhirManager>(
      init: FhirManager(),
      builder: (data) => data.isBusy
          ? Center(child: CircularProgressIndicator())
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //* Aidbox FHIR calls
                SharedActionButton(
                  title: 'Aidbox: Vitals',
                  onPressed: () => data.aidboxVitals(),
                ),

                //* Hapi FHIR calls
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _nameContainer(data.lastName, 'Last name'),
                    _nameContainer(data.firstName, 'First name'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SmallActionButton(title: 'Hapi: Search', onPressed: () => data.hapiSearch()),
                    SmallActionButton(title: 'Hapi: Create', onPressed: () => data.hapiCreate()),
                  ],
                )
              ],
            ),
    );
  }

  Container _nameContainer(TextEditingController name, String text) => Container(
        width: Get.width / 3,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: TextField(
          controller: name,
          decoration: InputDecoration(hintText: text),
        ),
      );
}
