import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app01_task2/models/places_model.dart';

class placeDataProvider with ChangeNotifier{
  List<placesmodel> placesList=[];
  loadPlaces() {
    FirebaseFirestore.instance.collection('places').get().then((querySnapshot) {
      querySnapshot.docs.forEach((queryDocSnapshot) {
        if (queryDocSnapshot.exists) {
          placesList.add(placesmodel.fromJson(queryDocSnapshot.data()));
        }
      });
      notifyListeners();
    });
  }
}