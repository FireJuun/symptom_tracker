import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart' as http;

class FhirService {
  Future<List<Quantity>> getResponse() async {
    final String server = 'https://flutterfhir.aidbox.app/';
    final Map<String, String> headers = {'Content-type': 'application/json'};
    final String identifier = 'test-client';
    final String secret = 'verysecret';
    final String grantType = 'client_credentials';
    var response1 = await http
        .post('$server/auth/token?client_id=$identifier&grant_type=$grantType&client_secret=$secret', headers: headers);
    if (response1.statusCode == 200) {
      var parsedbody = json.decode(response1.body);

      print('parsedbody: $parsedbody');
      var token = parsedbody['token_type'] + ' ' + parsedbody['access_token'];
      headers.putIfAbsent('Authorization', () => token);
    }
    var response2 = await http.get('$server/fhir/Observation?patient=test123&category=vital-signs', headers: headers);
    Bundle vitalsBundle = Bundle.fromJson(json.decode(response2.body));
    print('vitalsBundle: $vitalsBundle');

    List<Observation> observations = _getObservations(vitalsBundle);
    // Finds quantities for each observation.
    // If an observation's quanity is nested into components, these will be extracted individually
    print('Observations: $observations');
    List<Quantity> quantities = _getQuantities(observations);

    print('Quantities: $quantities');
    return quantities;
  }

  List<Observation> _getObservations(Bundle vitalsBundle) {
    List<Observation> data = [];

    for (var entry in vitalsBundle.entry) {
      if (entry.resource.runtimeType == Observation) {
        data.add(entry.resource);
      }
    }

    return data;
  }

  List<Quantity> _getQuantities(List<Observation> observations) {
    List<Quantity> data = [];

    for (Observation o in observations) {
      // This works for heart rate, temperature, etc...
      if (o.valueQuantity != null) {
        data.add(o.valueQuantity);
      }

      // This separates objects with components (e.g. blood pressure = systolic + diastolic)
      if (o.component != null) {
        for (var c in o.component) {
          // Check each component for null values. If non-null, add to data
          if (c.valueQuantity != null) {
            data.add(c.valueQuantity);
          }
        }
      }
    }
    return data;
  }
}
