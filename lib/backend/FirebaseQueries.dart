import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class FirebaseDataBase {
  String collactionName;
  Map<String, dynamic> data;
  FirebaseDataBase({required this.data, required this.collactionName}) {
    FirebaseFirestore.instance
        .collection(collactionName)
        .add(data)
        .then((value) {
      if (kDebugMode) {
        print(" value Uploaded SuccessFully : $value");
      }
    });
  }
}
class FirebaseDataBaseWithUniqueId {
  String collactionName;
  Map<String, dynamic> data;
  String key ;
  FirebaseDataBaseWithUniqueId({required this.data, required this.collactionName, required this.key}) {
    FirebaseFirestore.instance
        .collection(collactionName)
        .add(data)
        .then((value) {
      var id = value.id ;
      value.update({"$key":id});

      if (kDebugMode) {
        print(" value Uploaded SuccessFully : $value");
      }
    });
  }
}

Future<List<dynamic>> FirebaseGetData({required String collectionName}) async {
  List<dynamic> data = [];
  var value =
  FirebaseFirestore.instance.collection(collectionName).get().then((value) {
    data = value.docs.map((e) => e.data()).toList();
  });

  return data;
}

var value =0;
Map<String, dynamic > data = {
  "OrderId":"asdjalsd",
  "Quantity": value<=0?0:value,
  "Time": "",
  "ProductId": "",
  "Price":"",
  "ImageUrl": "",
  "":""

};
