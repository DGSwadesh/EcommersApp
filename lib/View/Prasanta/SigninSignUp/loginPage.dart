//import 'dart:js';
import 'package:e_commerce_app/View/Prasanta/DashBoard/Dashboard.dart';
import 'package:e_commerce_app/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: red,  
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: red,
        child: SingleChildScrollView(
          controller: controller,
          child: Stack(
            children: [
              Column(
                children: [
                  loginContainer(context),
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

loginContainer(context) {
  return Stack(
    children: [
      Container(
        child: CustomPaint(
          size: Size(1.sw, 0.9.sh),
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
                  hintText: 'Enter Your Email',
                  labelText: 'Email',labelStyle: TextStyle(fontWeight:FontWeight.bold)
                ),
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                   icon: Icon(Icons.vpn_key),
                  hintText: 'Enter Your Password',
                  labelText: 'Password',labelStyle: TextStyle(fontWeight:FontWeight.bold,)
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
                            fontSize: 14,
                            color: black,
                            height: 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 0.4.sw),
                child: InkWell(
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.orangeAccent, Colors.pinkAccent]),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:80, left: 0.8.sw),
                child: InkWell(
                  onTap: (){
                    controller.jumpTo(450);
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(Icons.arrow_downward_sharp, color: white),
                  ),
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
  return Stack(children: [
    RotatedBox(
      quarterTurns: 2,
      child: Container(
        child: CustomPaint(
          size: Size(1.0.sw, 1.0.sh),
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
                  padding: EdgeInsets.only(top:20.0, right: 0.8.sw),
                  child:  InkWell(
                  onTap: (){
                    controller.jumpTo(0);
                  },
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(100)),
                        child:
                            Icon(Icons.arrow_upward_sharp, color: Colors.white)),
                  ),
                ),
                SizedBox(height: 20),
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
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          hintText: 'Enter your name',
                          labelText: 'Name',labelStyle: TextStyle(fontWeight:FontWeight.bold)
                ),
                        ),
                      
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          hintText: 'Enter Your email',
                          labelText: 'Email',labelStyle: TextStyle(fontWeight:FontWeight.bold)
                ),
                        ),
                    
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.vpn_key),
                          hintText: 'Enter your Password',
                          labelText: 'Password',labelStyle: TextStyle(fontWeight:FontWeight.bold)
                ),
                        ),
                      
                      TextFormField(
                        autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.vpn_key),
                          hintText: 'Enter your confirm Password',
                          labelText: 'Comfirm Password',labelStyle: TextStyle(fontWeight:FontWeight.bold)
                ),
                        ),
        
                    ],
                  )),
                ),
                SizedBox(height:20),
                 Padding(
                padding: EdgeInsets.only(top:40, right: 0.4.sw),
                child: InkWell(
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.orangeAccent, Colors.pinkAccent]),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                        child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                ),
              ),
              ],
            )))
  ]);
}

middleButtonContainer() {
  return Padding(
    padding: EdgeInsets.only(top: 0.6.sh),
    child: Container(
      width: 1.sw,
      height: 0.5.sh,
      // color: Colors.amber,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0.12.sh, right: 0.7.sw),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset("Images/G+.jpg", fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.04.sh, right: 0.01.sw),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(100)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image.asset("Images/fb1.jpg", fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.05.sh, left: 0.7.sw),
            child: Flexible(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Image.asset("Images/twitter1.jpg", fit: BoxFit.fill)),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
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
