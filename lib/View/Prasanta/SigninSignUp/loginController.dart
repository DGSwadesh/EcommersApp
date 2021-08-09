import 'dart:io';

import 'package:e_commerce_app/services/error_handler.dart';
import 'package:e_commerce_app/util/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  DatabaseReference firebaseDatabase =
      FirebaseDatabase.instance.reference().child("users");

  register({name, email, password}) {
    isLoading.value = true;
    var userDetails = {"email": email, "password": password, "name": name};
    try {
      firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((result) {
        firebaseDatabase
            .child(result.user!.uid)
            .set(userDetails)
            .then((res) {
          isLoading.value = false;
          return true;
        }).catchError((e) {
          isLoading.value = false;
          showToast(e.message.toString(), green);
          return false;
        });
      }).catchError((e) {
        isLoading.value = false;
        showToast(e.message.toString(), green);
        return false;
      });
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

  login() {}
}
