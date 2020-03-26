import 'package:fiver_project_work/SearchPage.dart';
import 'package:fiver_project_work/Stadiumdetail.dart';
import 'package:fiver_project_work/occasion.dart';
import 'package:fiver_project_work/profile.dart';
import 'package:fiver_project_work/stadiumslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
    BottomNav({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {


  int _currentIndex =0;
  final List<Widget> children = [
      Occasion(),
    StadiumList(),
    SearchPage(),
      Profile(),
    StadiumDetail()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: children[_currentIndex],
        backgroundColor: Colors.white,
//          bottomNavigationBar: CurvedNavigationBar(
//            height: 60.0,
//            backgroundColor: Colors.green.shade400,
//            animationCurve: Curves.fastOutSlowIn,
//            index: _currentIndex,
//            items: <Widget>[
//              Image.asset("assets/occasionicon.png"),
//              Image.asset("assets/stadiumicon.png"),
//              Icon(CupertinoIcons.location, size: 30),
//              Icon(CupertinoIcons.person, size: 30),
//              Image.asset("assets/bookstadiumicon.png"),
//                ],
//            onTap: (index) {
//              setState(() {
//                _currentIndex = index;
//              });
//            },
//          ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
             setState(() {
               _currentIndex = index;
             });
            },
          backgroundColor: Colors.grey.shade300,
          iconSize: 30.0,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/occasionicon.png"),color: Colors.black,),
                title: Text('المناسبات',textDirection:TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.black
                ),)
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/stadiumicon.png"),color: Colors.black),
                title: Text('الملاعب',textDirection:TextDirection.rtl,style: TextStyle(
                    color: Colors.black
                ),
                )
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/locationicon.png"),color: Colors.black,),
              title: new Text('المواقع',textDirection:TextDirection.rtl,style: TextStyle(
                  color: Colors.black
              ),),
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/accounticon.png"),color: Colors.black,),
                title: Text('حسابي',textDirection:TextDirection.rtl,style: TextStyle(
                    color: Colors.black
                ),)
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/bookstadiumicon.png"),color: Colors.black),
                title: Text('حجز الملاعب',textDirection:TextDirection.rtl,style: TextStyle(
                  color: Colors.black
                ),)
            )
          ],


    ));
  }
}
