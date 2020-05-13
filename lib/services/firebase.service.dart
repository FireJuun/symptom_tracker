import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirebaseService extends GetController {
  // Get should automatically call dispose
  Stream<DocumentSnapshot> get fbHelloStream =>
      Firestore.instance.collection('collection').document('document').snapshots();
}
