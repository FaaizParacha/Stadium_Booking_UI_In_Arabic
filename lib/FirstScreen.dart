import 'dart:async';
import 'package:fiver_project_work/Registration.dart';
import 'package:fiver_project_work/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Login())));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body : Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset("assets/newkuwait.png",height: 80.0,width: 80.0,),
                  Image.asset("assets/youthlogo.png",height: 100.0,width: 100.0,),
                ],
              ),
              SizedBox(height: 50.0,),
              Center(
                child: Image.asset("assets/logo.png",height:200,),
              ),
              SizedBox(height: 20.0,),
              Text("ملاعبنا ",textDirection: TextDirection.rtl,style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'NeoSansArabic',
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade600,
              ),),
              SizedBox(height: 100.0,),
              CircularProgressIndicator(),
            ],

          ),
        )

        );
  }
}

