import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool _isChecked = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text('تسجيل مستخدم جديد',textDirection: TextDirection.rtl,style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon : new Icon(CupertinoIcons.clear, color: Colors.black,),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
              },
            ),
          ],

      ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'اسم المستخدم',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'الاسم الثلاثي',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'الرقم المدني',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.expand_more),
                    hintText: 'المحافظة',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'البريد الالكتروني',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'رقم الهاتف',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.eye,color: const Color(0xff6CACC5),),
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'كلمة السر',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.eye,color: const Color(0xff6CACC5),),
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'تأكيد كلمة السر',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(alignment: Alignment.bottomRight,
              height: 35.0,
              child: Padding(
                padding: EdgeInsets.only(right: 15.0,top: 15.0),
                child: Text('ادخل القيمة كما هو موضح بالصورة',),
              ),
            ),
            Container(
              height: 70.0,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff6CACC5),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: CheckboxListTile(
                  value: _isChecked,
                  onChanged: (bool val) => setState(() => _isChecked = val),
                  title: Text("موافق على الشروط والأحكام",textDirection: TextDirection.rtl,),
                  controlAffinity: ListTileControlAffinity.trailing,
                  checkColor: Colors.white,activeColor: Colors.green,
                ),
              ),
            ),
//          Container(
//            //padding: EdgeInsets.only(left: 175.0),
//           height: 50.0,
//            child: Row(
//              children: <Widget>[
//
//                CheckboxListTile(
//
//                  value: _rememberMeFlag,
//
//                  onChanged: (value) => setState(() {
//                    _rememberMeFlag = !_rememberMeFlag;
//                  }),
//                  title:Text(
//                    "موافق على الشروط والأحكام",
//                    style: new TextStyle(color: Colors.black),
//                  ),
//                  controlAffinity: ListTileControlAffinity.trailing,
//                ),
//
//              ],
//            ),
//
//          ),
            Padding(
                padding: EdgeInsets.only(left: 15.0,right: 15.0,top: 12.0,bottom: 15),
                child:  MaterialButton(
                  color: Colors.green,
                  // color: Colors.lightBlue,
                  elevation: 2.0,
                  minWidth: 330.0,
                  height: 48.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Text('تسجيل',style: TextStyle(

                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ), ),
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                )),
            SizedBox(height: 5.0,),
          ],
        ),
      ),
    );


  }

}
