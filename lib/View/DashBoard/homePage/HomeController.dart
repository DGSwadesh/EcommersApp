import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/util/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  var productList = [].obs;
  var firestore = FirebaseFirestore.instance.collection('users');

  Future getProduct() async {
    isLoading.value = true;
    try {
      QuerySnapshot<Map<String, dynamic>> users = await firestore.get();
      productList.assignAll(users.docs);
      print(users.docs[0]['name']);
      isLoading.value = false;
    } on SocketException {
      showToast('No Internet connection 😑', green);
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
      showToast(e.toString(), green);
    }
  }
}
