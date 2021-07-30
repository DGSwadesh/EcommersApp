import 'dart:async';
import 'package:e_commerce_app/View/SigninSignUp/loginPage.dart';
import 'package:e_commerce_app/util/sharePreference_instance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'Controller/application_starter_controller.dart';
import 'View/DashBoard/Dashboard.dart';
import 'View/DashBoard/homePage/MyModel.dart';
import '';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // DashboardBinding().dependencies();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) async {
    sharePrefereceInstance.init();
    runApp(
      StartApp(),
    );
  });
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(accentColor: Colors.black),
      debugShowCheckedModeBanner: false,
      // initialBinding: DashboardBinding(),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // var returnWidget1 = WelcomeScreen();

  var scafoldKey = GlobalKey<FormState>();
  final applicationStarterController = Get.put(ApplicationStarterController());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return ScreenUtilInit(
      designSize: Size(width, height),
      allowFontScaling: false,
      builder: () => Obx(() {
        print('main.dart');
        var applicationState = applicationStarterController.state.value;
         return LoginPage();
        return DashBoard();
        // if (applicationState == ApplicationState.LoggedIn) {
        //   return Dashbord();
        // } else if (applicationState == ApplicationState.LoggedOut) {
        //   return WelcomeScreen();
        // } else {
        //   return SplashScreen();
        // }
        
      }),
    );
  }

}
