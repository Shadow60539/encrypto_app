import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseX on FirebaseFirestore {
  DocumentReference<Map<String, dynamic>> getCountDoc() {
    return collection("file_collection").doc("count");
  }
  DocumentReference<Map<String, dynamic>> getShowAdsDoc() {
    return collection("ads").doc("show_ads");
  }
}
