import 'package:fiver_project_work/BottomNav.dart';
import 'package:fiver_project_work/Registration.dart';
import 'package:fiver_project_work/reset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberMeFlag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 60.0),
            Container(
              height: 130.0,
              child: Center(
                child: Image.asset('assets/logo.png'),
              ),
            ),
            SizedBox(height: 40.0),
            AspectRatio(
              aspectRatio: 6.5,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.person,color: const Color(0xff6CACC5),),
                      //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                      hintText: 'اسم المستخدم',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(5.0),
                            topRight:Radius.circular(5.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 380.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            Container(
              height: 60.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.eye,color: const Color(0xff6CACC5),),
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'كلمة السر',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(5.0),
                          topRight:Radius.circular(5.0)),
                    ),
                  ),
                ),

              ),
            ),
            Container(
              width: 380.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
              ),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            Container(padding: EdgeInsets.all(13.0),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Text(
                      'نسيت كلمة السر ؟',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 15.0,
                        fontFamily: 'NeoSansArabic',
                         fontWeight: FontWeight.w300
                      ),
                    ),
                    onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Password()),
                      );
                    },
                  ),
                  Text(
                    "تذكرني",
                    style: new TextStyle(color: Colors.black,fontSize: 15.0,
                        fontFamily: 'NeoSansArabic',
                        fontWeight: FontWeight.w300),
                  ),

                  Checkbox(
                    value: _rememberMeFlag,
                    onChanged: (value) => setState(() {
                      _rememberMeFlag = !_rememberMeFlag;
                    }),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all( 15.0),
                child:  MaterialButton(
                  color: const Color(0xff6CACC5),
                  // color: Colors.lightBlue,
                  elevation: 2.0,
                  minWidth: 310.0,
                  height: 48.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Text('تسجيل الدخول',style: TextStyle(

                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ), ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNav()));
                  },
                )),
            Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,bottom: 15.0,top: 8.0),
                child:  MaterialButton(
                  color: Colors.green,
                  // color: Colors.lightBlue,
                  elevation: 2.0,
                  minWidth: 310.0,
                  height: 48.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Text('تسجيل مستخدم جديد',style: TextStyle(

                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ), ),
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registration()),
                    );
                  },
                )),
            Padding(
                padding: EdgeInsets.all( 15.0),
                child:  MaterialButton(
                  color: const Color(0xff6CACC5),
                  elevation: 2.0,
                  minWidth: 180.0,
                  height: 48.0,

                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: CupertinoColors.systemGreen,
                      style: BorderStyle.solid,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Text('تخطي ومتابعة',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ), ),
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNav()),
                    );
                  },
                )),SizedBox(height: 5.0,),
          ],
        ),
      ),

      );
  }
}
