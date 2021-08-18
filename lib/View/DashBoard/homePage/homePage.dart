import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ECom'),
        ),
        body: SingleChildScrollView(
            child: Column(
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
                      items.length,
                      (index) => Container(
                            child: Text(items[index]),
                          ))),
            ),
          ],
        )));
  }
}
