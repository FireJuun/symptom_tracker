import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:symptom_tracker/services/models/models.dart';

class FirebaseService extends GetController {
  static FirebaseService get to => Get.find();
  final Firestore _db = Firestore.instance;

  Stream<DocumentSnapshot> get fbStreamHello => _db.collection('collection').document('document').snapshots();

  Stream<ModelCBC> get fbStreamCBC =>
      _db.collection('labs').document('cbc').snapshots().map((v) => ModelCBC.fromJson(v.data));

  Stream<ModelBMP> get fbStreamBMP =>
      _db.collection('labs').document('bmp').snapshots().map((v) => ModelBMP.fromJson(v.data));
}
