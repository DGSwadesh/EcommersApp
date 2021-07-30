import 'package:e_commerce_app/View/Prasanta/DashBoard/Dashboard.dart';
import 'package:e_commerce_app/View/Prasanta/SigninSignUp/loginPage.dart';
import 'package:flutter/material.dart';

class Both extends StatefulWidget {
  const Both({Key? key}) : super(key: key);

  @override
  _BothState createState() => _BothState();
}

class _BothState extends State<Both> {
  @override
  Widget build(BuildContext context) {
    // return DashBoard();
    return LoginPage();
  }
}




