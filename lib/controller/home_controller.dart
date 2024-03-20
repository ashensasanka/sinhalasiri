import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Here we defined the class to access the database and handle the data query in documents
class HomeController extends GetxController{

  String test = 'test string';

  // defined the variables as FirebaseFirestore store data as key value and FirebaseStorage store data as files
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  //Defined the Collections variables of database
  late CollectionReference logdetailsCollection;
  late CollectionReference productCollection;
  late CollectionReference videoAddCollection;
  // Text controllers from Add product page
  TextEditingController achivementNameCtrl = TextEditingController();
  TextEditingController productDescriptionCtrl = TextEditingController();
  TextEditingController productImgCtrl = TextEditingController();
  TextEditingController productPriceCtrl = TextEditingController();
  //Define the type of value
  DateTime birthday = DateTime.now();
  DateTime? logday;
  String? lat,long;
  String category = 'Category';
  String brand = 'Fish Category';
  String from = 'From';
  bool offer = false;
  File? selectedImage;

  //List of Products Add and Show
  // List<Product> products = [];
  // List<Product> productShowInUi = [];

  // Notify about loging details
  // void handleDateSelection(DateTime selectedDate) {
  //   logday = selectedDate;
  //   update(); // Notify listeners about the change
  // }

  // Initiate the database collections and Fetch the data
  @override
  void onInit() async {
    // TODO: implement onInit
    videoAddCollection = firestore.collection('videos');
    super.onInit();
  }
}