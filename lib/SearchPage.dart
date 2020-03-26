import 'package:fiver_project_work/quickSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Stadiumdetail.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor:Color.fromARGB(200, 150, 250, 200),
                centerTitle: true,
                leading: IconButton(icon: Icon(CupertinoIcons.search,
                  color: Colors.green,
                ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>QuickSearch()));
                  },
                ),
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.green,),
                  )
                ],
                title: Text("حجز الملاعب",textDirection: TextDirection.rtl,style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Image.asset("assets/logo.png",height: 180.0,),
              SizedBox(height: 10.0,),
             Container(
               height: 60.0,
               width: 380.0,
               decoration: BoxDecoration(
                 color: Color.fromARGB(220, 100, 160, 255),
                 borderRadius: BorderRadius.all(Radius.circular(20.0)),
               ),
               child: Row(
                 textDirection: TextDirection.rtl,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text("تاريخ الحجز",style: TextStyle(
                     color: Colors.white,
                     fontSize: 20.0,fontFamily: 'NeoSansArabic',
                       fontWeight: FontWeight.w300
                   ),),
                   MaterialButton(
                     color: Color.fromARGB(250, 110, 190, 180),
                     //elevation: 4.0,
                     minWidth: 100.0,
                     height: 60.0,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                     ),
                     child: Image(image:AssetImage("assets/calendericon.png",),height: 40.0, ),
                     onPressed:() {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => StadiumDetail()),
                       );
                     },
                   ),
                 ],
               ),
             ),
              SizedBox(height: 8.0,),
              Container(
                height: 60.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(220, 100, 160, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("المحافظة",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,fontFamily: 'NeoSansArabic',
                        fontWeight: FontWeight.w300
                    ),),
                    MaterialButton(
                      color: Color.fromARGB(250, 110, 190, 180),
                      //elevation: 4.0,
                      minWidth: 100.0,
                      height: 60.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child:  Image(image: AssetImage("assets/governorateicon.png"),height: 40.0,),
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StadiumDetail()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                height: 60.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(220, 100, 160, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("المنطقة",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,fontFamily: 'NeoSansArabic',
                        fontWeight: FontWeight.w300
                    ),),
                    MaterialButton(
                      color: Color.fromARGB(250, 110, 190, 180),
                      //elevation: 4.0,
                      minWidth: 100.0,
                      height: 60.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Image(image: AssetImage("assets/areaicon.png"),height: 40.0,),
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StadiumDetail()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                height: 60.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(220, 100, 160, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("  الملعب   ",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,fontFamily: 'NeoSansArabic',
                        fontWeight: FontWeight.w300
                    ),),
                    MaterialButton(
                      color: Color.fromARGB(250, 110, 190, 180),
                      //elevation: 4.0,
                      minWidth: 100.0,
                      height: 60.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child:  Image(image: AssetImage("assets/stadiumicon1.png"),height: 40.0),
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StadiumDetail()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0,),
              Container(
                height: 60.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(220, 100, 160, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("توقيت الحجز ",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,fontFamily: 'NeoSansArabic',
                        fontWeight: FontWeight.w300
                    ),),
                    MaterialButton(
                      color: Color.fromARGB(250, 110, 190, 180),
                      //elevation: 4.0,
                      minWidth: 100.0,
                      height: 60.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child:  Image(image: AssetImage("assets/time_icon.png"),height: 40.0,),
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StadiumDetail()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),
              Container(
                height: 60.0,
                width: 380.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Text(" بحث    ",style: TextStyle(
                       color: Colors.white,
                       fontSize: 20.0,fontFamily: 'NeoSansArabic',
                       fontWeight: FontWeight.w300
                   ),),
                    MaterialButton(
                      color: Colors.green.shade200,
                      //elevation: 4.0,
                      minWidth: 100.0,
                      height: 60.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      ),
                      child:  Icon(CupertinoIcons.search,color: Colors.white,size: 40.0,),
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuickSearch()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0,),

            ],
          ),
        ),
      );
  }
}
