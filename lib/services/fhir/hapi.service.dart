import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart' as http;

class HapiService {
  Future<http.Response> createPatient(String first, String last) async {
    var newPatient = Patient(
      name: [
        HumanName(
          given: [first],
          family: last,
        ),
      ],
    );

    final String server = 'http://hapi.fhir.org/baseR4/';
    final Map<String, String> headers = {'Content-type': 'application/json'};
    http.Response response = await http.post(
      '$server/Patient?_format=json&_pretty=true',
      headers: headers,
      body: jsonEncode(
        newPatient.toJson(),
      ),
    );
    return response;
  }
}
