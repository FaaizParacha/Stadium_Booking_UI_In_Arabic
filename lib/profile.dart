import 'package:fiver_project_work/quickSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
         textDirection: TextDirection.rtl,
          children: <Widget>[
            AppBar(
              backgroundColor:Color.fromARGB(200, 150, 250, 200),
              leading: IconButton(icon: Icon(CupertinoIcons.search,
                color: Colors.green,
              ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>QuickSearch()));
                },
              ),
              centerTitle: true,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.green,),
                ),
              ],

              title: Text("حسابي",textDirection: TextDirection.rtl,style: TextStyle(
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
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.account_circle,size: 120.0,color: Colors.grey.shade400,),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("تغییر الصورۃ",textDirection: TextDirection.rtl,style: TextStyle(
                        color: Color.fromARGB(180, 20, 180, 255),
                        fontSize: 16.0,fontFamily: 'NeoSansArabic',
                        fontWeight: FontWeight.w700
                    ),)
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            AspectRatio(
              aspectRatio: 0.8,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: CupertinoColors.black,

                          )
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          FlatButton(
                            onPressed: (){},
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("تعديل البيانات",textDirection: TextDirection.rtl,
                                  style:  TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                IconButton(
                                  icon: Image(image: AssetImage("assets/editicon.png")),
                                ),
                              ],
                            ),
                          ),Divider(color: Colors.black,),
                          FlatButton(
                            onPressed: (){},
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("التنبيهات",textDirection: TextDirection.rtl,
                                  style:  TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                IconButton(
                                  icon: Image(image: AssetImage("assets/notiicon.png"),),
                                ),
                              ],
                            ),
                          ),Divider(color: Colors.black,),
                          FlatButton(
                            onPressed: (){},
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("مفضلتي",textDirection: TextDirection.rtl,
                                  style:  TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                IconButton(
                                  icon: Image(image: AssetImage("assets/favouriteicon-1.png")),
                                ),
                              ],
                            ),
                          ),Divider(color: Colors.black,),
                          FlatButton(
                            onPressed: (){},
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("حجوزاتي",textDirection: TextDirection.rtl,
                                  style:  TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                IconButton(
                                  icon: Image(image: AssetImage("assets/bookingicon.png"),),
                                ),
                              ],
                            ),
                          ),Divider(color: Colors.black,),
                          FlatButton(
                            onPressed: (){},
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("رصيدي",textDirection: TextDirection.rtl,
                                  style:  TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                IconButton(
                                  icon: Image(image: AssetImage("assets/walleticon.png"),),
                                ),
                              ],
                            ),
                          ),Divider(color: Colors.black,),
                          FlatButton(
                            onPressed: (){},
                            child: Row(
                              textDirection: TextDirection.rtl,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("تسجيل الدخول",textDirection: TextDirection.rtl,
                                  style:  TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                IconButton(
                                  icon: Image(image: AssetImage("assets/loginicon.png"),),
                                ),
                              ],
                            ),
                          ),Divider(color: Colors.black,),
                          SizedBox(height: 5.0,),
                        ],
                      ),
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

