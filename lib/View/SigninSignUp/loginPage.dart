import 'package:e_commerce_app/util/constant.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: red,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  loginContainer(),
                  signUpContainer(),
                ],
              ),
              middleButtonContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

loginContainer() {
  return Stack(
    children: [
      Container(
        child: CustomPaint(
          size: Size(1.sw, 0.8.sh),
          painter: RPSCustomPainter(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 0.8.sh,
          width: 1.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGO',
                style: TextStyle(
                    fontSize: 25,
                    color: black,
                    height: 2,
                    fontWeight: FontWeight.w500),
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What do people call you?',
                  labelText: 'Email *',
                ),
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What do people call you?',
                  labelText: 'Email *',
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () async {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 12,
                            color: black,
                            height: 2,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 0.7.sw),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: red, borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70, left: 0.8.sw),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: red, borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

signUpContainer() {
  return Stack(
    children: [
      RotatedBox(
        quarterTurns: 2,
        child: Container(
          child: CustomPaint(
            size: Size(1.sw, 0.8.sh),
            painter: RPSCustomPainter(),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 0.8.sh,
          width: 1.sw,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 7, right: 0.8.sw),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7, right: 0.7.sw),
                child: Text(
                  'LOGO',
                  style: TextStyle(
                      fontSize: 25,
                      color: black,
                      height: 2,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'What do people call you?',
                        labelText: 'Email *',
                      ),
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'What do people call you?',
                        labelText: 'Email *',
                      ),
                    ),
                  ],
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () async {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 12,
                            color: black,
                            height: 2,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 0.7.sw),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: red, borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

middleButtonContainer() {
  return Padding(
    padding: EdgeInsets.only(top: 0.5.sh),
    child: Container(
      width: 1.sw,
      height: 0.5.sh,
      // color: Colors.amber,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0.05.sh, right: 0.8.sw),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(100)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.08.sh, right: 0.5.sw),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(100)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.1.sh, right: 0.1.sw),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(100)),
            ),
          ),
        ],
      ),
    ),
  );
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0050000, 0);
    path_0.lineTo(size.width, size.height * 0.0012667);
    path_0.quadraticBezierTo(
        size.width, size.height * 0.7834667, size.width, size.height);
    path_0.cubicTo(
        size.width * 0.9648500,
        size.height * 1.1271667,
        size.width * 0.2040000,
        size.height * 0.7181000,
        size.width * 0.0050000,
        size.height * 0.6083333);
    path_0.quadraticBezierTo(size.width * 0.0050000, size.height * 0.6254167,
        size.width * 0.0050000, size.height * 0.6766667);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
