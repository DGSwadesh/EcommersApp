import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  DatabaseReference firebaseDatabase =
      FirebaseDatabase.instance.reference().child("Users");

  register({name, email, password}) {
    isLoading.value = true;
    var userDetails = {"email": email, "password": password, "name": name};

    firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((result) {
      firebaseDatabase.child(result.user!.uid).set(userDetails).then((res) {
        isLoading.value = false;
        return true;
      }).catchError((err) {
        isLoading.value = false;
        return false;
      });
    });
  }

  login() {}
}
