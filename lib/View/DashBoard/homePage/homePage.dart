import 'package:e_commerce_app/View/DashBoard/homePage/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeController = Get.put(HomeController());

  var items = [
    'mobile',
    'tab',
    'mobile',
    'tab',
    'mobile',
    'tab',
    'mobile',
    'tab',
  ];

  @override
  void initState() {
    homeController.getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            title: Text('ECom'),
          ),
          body: SingleChildScrollView(
              child: homeController.isLoading.value == true
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        Container(
                          height: 0.5.sh,
                          child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: (2 / 1),
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              padding: EdgeInsets.all(10.0),
                              children: List.generate(
                                  homeController.productList.length,
                                  (i) => InkWell(
                                        onTap: () {
                                          homeController.getProduct();
                                        },
                                        child: Container(
                                          child: Text(homeController
                                              .productList[0]['name']),
                                        ),
                                      ))),
                        ),
                      ],
                    )));
    });
  }
}
