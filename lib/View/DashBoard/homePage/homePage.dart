import 'package:e_commerce_app/View/DashBoard/homePage/MyModel.dart';
import 'package:e_commerce_app/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
List< MyModel> itemList=[
     MyModel(
      title:'Nike Air Max',
      image: 'Images/shoe1.jpg',
     price: 'Rs.499.00' ),
      MyModel(
      title:'Nike Air Max',
      image: 'Images/shoe2.jpg',
     price: 'Rs.499.00' ),
       MyModel(
      title:'Nike Air Max',
      image: 'Images/shoe3.jpg',
     price: 'Rs.499.00' ),
       MyModel(
      title:'Nike Air Max',
      image: 'Images/shoe4.jpg',
     price: 'Rs.499.00' ),
      MyModel(
      title:'Nike Air Max',
      image: 'Images/shoe5.jpg',
     price: 'Rs.499.00' ),
      MyModel(
      title:'Nike Air Max',
      image: 'Images/shoe6.jpg',
     price: 'Rs.499.00' ),
  ];
 
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ECom'),
        ),
       body: (
         GridView.builder(
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              crossAxisSpacing:2,
              childAspectRatio:0.7,
               ),
               itemCount: itemList.length,
             itemBuilder: (context, index){
               return Card(  
                 child:(
                   InkWell(onTap:(){print("tapped");},
                 child:Container(
                   height:400,
                   width: 400,
                   padding: EdgeInsets.all(4),
                   child: Column(
                     children: [
                       Flexible(
                       child: Image.asset(
                         itemList[index].image!,height:400,width:400,fit:BoxFit.fill,
                         ),
                       ),
                       Divider(height:3),
                       Text(
                         itemList[index].title!
                       ),
                       Divider(height: 3),
                       Text(itemList[index].price!),
                     ],
                   ),
                 ),
                   )
                   ),
                 );
             }  
    )));
  }
}
