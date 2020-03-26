import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'forgotPass.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text('نسيت كلمة السر',textDirection: TextDirection.rtl,style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0
        ),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon : new Icon(Icons.close, color: Colors.black,),
              onPressed: () => {}
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              height: 90.0,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'كلمة السر الجديدة',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 90.0,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
                    hintText: 'تأكيد كلمة السر الجديدة',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all( 15.0),
                child:  MaterialButton(
                  color: Colors.green,
                  // color: Colors.lightBlue,
                  elevation: 4.0,
                  minWidth: 330.0,
                  height: 48.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Text('إرسال',style: TextStyle(
                    fontFamily: 'NeoSansArabic',
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ), ),
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Fpassword()),
                    );
                  },
                )),
          ],
        ) ,
      ),
    );
  }
}
