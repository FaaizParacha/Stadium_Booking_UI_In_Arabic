import 'package:fiver_project_work/reset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text('التفعيل',textDirection: TextDirection.rtl,style: TextStyle(
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
      body: _body(context),
    );}
  Widget _body(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: _topLayout(context),
        ),
        _bottomButton(context)
      ],
    );
  }

  Widget _boxWithLable(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            alignment: Alignment.centerRight,
            child: Text(":الرجاء ادخال كود التفعيل المرسل إليك",
                style: TextStyle(

                    fontSize: 15,fontFamily: 'NeoSansArabic',
                    fontWeight: FontWeight.w300,
                    color: Colors.black))),
        _boxBuilder()
      ],
    );
  }

  Widget _boxBuilder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
          alignment: Alignment.center,
          height: 52,
          width: 52,
          child:GestureDetector(

            child:Text('تفعيل',
              style: TextStyle(
                color: Colors.white,fontFamily: 'NeoSansArabic',
                  fontWeight: FontWeight.w300
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Password()));
            },
          ),
          decoration: BoxDecoration(color: const Color(0xff6CACC5),
              border: Border.all(color: Colors.white)),
        ),
        _box(),
        _box(),
        _box(),
        _box(),

      ],
    );
  }


  Widget _box() {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      alignment: Alignment.center,
      height: 50,
      width: 50,
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
            border: InputBorder.none, counterText: ''),
      ),


      decoration: BoxDecoration(
          border: Border.all(color: Colors.green)),
      //decoration: BoxDecoration(borderRadius:BorderRadius.circular(5.0), color: Colors.green ),
    );
  }



  Widget _bottomButton(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[

          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _topLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[ _boxWithLable(context)],

    ));
  }
}
