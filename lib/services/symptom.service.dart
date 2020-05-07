import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/services/services.dart';

class SymptomService extends GetController {
  static SymptomService get to => Get.find();

  List<Symptom> get symptomList => _symptomList;

  List<Symptom> _symptomList = [
    Symptom(icon: FlutterIcons.face_mco, name: 'Cough', id: symptomId.cough),
    Symptom(icon: FlutterIcons.face_mco, name: 'SOB', id: symptomId.cough),
    Symptom(icon: FlutterIcons.face_mco, name: 'dizzy', id: symptomId.cough),
    Symptom(icon: FlutterIcons.face_mco, name: 'get data', id: symptomId.cough),
  ];
}
