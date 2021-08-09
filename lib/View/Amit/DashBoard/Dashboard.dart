// import 'package:e_commerce_app/View/Amit/DashBoard/homePage/homePage.dart';
// import 'package:e_commerce_app/View/Amit/DashBoard/profile/profile.dart';
// import 'package:e_commerce_app/util/constant.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class DashBoard extends StatefulWidget {
//   @override
//   _DashBoardState createState() => _DashBoardState();
// }

// class _DashBoardState extends State<DashBoard> {
//   List<Widget> screenList = <Widget>[
//     Home(),
//     Profile(),
//     Home(),
//     Profile(),
//   ];

//   int _selectedIndex = 0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   bool isSelectedIcon = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromRGBO(5, 3, 17, 1), 
//             icon: _selectedIndex == 0
//                 ? Container(
//                     padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(67, 148, 223, 1),
//                     ),
//                     child: Icon(Icons.home_outlined),
//                   )
//                 : Icon(Icons.home_outlined),
//             title: Text(
//               'Home',
//               style: TextStyle(color: white, fontSize: 15),
//             ),
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromRGBO(5, 3, 17, 1),
//             // icon: Icon(Icons.search),
//             icon: _selectedIndex == 1
//                 ? Container(
//                     padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(67, 148, 223, 1),
//                     ),
//                     child: Icon(Icons.search),
//                   )
//                 : Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.cyanAccent.withOpacity(0.4),
//                               blurRadius: 10,
//                               spreadRadius: 10)
//                         ]),
//                     child: Icon(Icons.search)),
//             // label: 'Search',
//             title: Text(
//               'Search',
//               style: TextStyle(color: white, fontSize: 15),
//             ),
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromRGBO(5, 3, 17, 1),
//             // icon: Icon(Icons.favorite_border_outlined),
//             icon: _selectedIndex == 2
//                 ? Container(
//                     padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(67, 148, 223, 1),
//                     ),
//                     child: Icon(Icons.favorite_border_outlined),
//                   )
//                 : Icon(Icons.favorite_border_outlined),
//             title: Text(
//               'My Playlist',
//               style: TextStyle(color: white, fontSize: 15),
//             ),
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Color.fromRGBO(5, 3, 17, 1),
//             icon: _selectedIndex == 3
//                 ? Container(
//                     padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Color.fromRGBO(67, 148, 223, 1),
//                     ),
//                     child: Icon(Icons.account_circle_outlined),
//                   )
//                 : Icon(Icons.account_circle_outlined),
//             // label: 'My Playlist',
//             title: Text(
//               'Connect',
//               style: TextStyle(color: white, fontSize: 15),
//             ),
//           ),
//         ],
//         backgroundColor: Color.fromRGBO(5, 3, 17, 1),
//         elevation: 0,
//         currentIndex: _selectedIndex,
//         unselectedItemColor: white,
//         selectedItemColor: white,
//         onTap: _onItemTapped,
//       ),
//       body: screenList.elementAt(_selectedIndex),
//     );
//   }
// }
