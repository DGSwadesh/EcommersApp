
import 'package:e_commerce_app/util/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: red,
        child: Center(child: Text('DG TechyBusiness Splash Screen')),
      ),
    );
  }
}