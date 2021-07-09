import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) =>
    GoogleFonts.roboto(
        textStyle: TextStyle(
            fontWeight: fontWeight,
            // fontFamily: 'Poppins',
            wordSpacing: 3,
            color: fontColor,
            fontSize: fontSize));

TextStyle customizeTextStyleSmallerSpace(fontWeight, fontSize, fontColor) =>
    GoogleFonts.nunito(
        textStyle: TextStyle(
            fontWeight: fontWeight,
            // fontFamily: 'Poppins',
            wordSpacing: 1,
            letterSpacing: 0.3,
            color: fontColor,
            fontSize: fontSize));

showToast(msg, color) => Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0,
    );
    
//=================================Color Code====================================
final Color red = Color(0xffff1a1a);
final Color white = Color(0xffffffff);
final Color black = Colors.black;

//=================================BASE URL====================================
final String BASE_URL = "https://laravel.";
// final String BASE_URL = "https://";

//========================================sharedpreference======================

//==========================Text============================================
final String INTERNET_ERROR = "We are faceing an error";
final String SUCCESS = "success";
final String FAILED = "failed";

//========================assets======================
final String googleImg = 'https://csform.com/wp-content/uploads/2018/04/UI-App-Design-Login-Signup.jpg';
final String googleIm1g = 'https://uxdesign.cc/shopee-ux-ui-case-study-68902e20bf62';

