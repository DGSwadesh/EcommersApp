import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/util/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  var firestore = FirebaseFirestore.instance.collection('users');

  Future register({name, email, password}) async {
    isLoading.value = true;
    var userDetails = {"email": email, "password": password, "name": name};
    // print('detail- $userDetails');
    try {
      var result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      await firestore.add(userDetails);
      isLoading.value = false;
      return true;
    } on SocketException {
      showToast('No Internet connection 😑', green);
      return false;
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
      showToast(e.toString(), green);
      return false;
    }
  }

  Future login({email, password}) async {
    isLoading.value = true;
    try {
      var result = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print(result);
      if (result.user != null) {
        isLoading.value = false;
        return true;
      }
      isLoading.value = false;
    } on SocketException {
      showToast('No Internet connection 😑', green);
      return false;
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
      showToast(e.toString(), green);
      return false;
    }
  }
}
