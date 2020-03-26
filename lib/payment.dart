import 'package:fiver_project_work/profile.dart';
import 'package:fiver_project_work/quickSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              ),
            ],

            title: Text("تفاصيل الحجز",textDirection: TextDirection.rtl,style: TextStyle(
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
            height: 20.0,
          ),
          AspectRatio(
            aspectRatio: 1.5,
            child: Padding(padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: CupertinoColors.black,
                        blurRadius: 1,

                      )
                    ]
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text("محمد يوسف علي",textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 18.0,
                                fontFamily: 'NeoSansArabic',
                                fontWeight: FontWeight.w300
                            ),),),
                          Expanded(flex: 1,
                              child: Text("280000000000",textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 18.0
                            ),)
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(flex: 1,
                            child: Text("المكان ",textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.w300
                              ),),
                          ),
                          Expanded(flex: 1,
                            child: Text("ثانوية جاسم الخرافي",textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontSize: 18.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.w300
                              ),),
                          )

                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(flex: 1,
                            child: Text("الملعب ",textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.w300
                              ),),
                          ),
                          Expanded(flex: 1,
                            child: Text("الملعب 1",textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontSize: 18.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.w300
                              ),),
                          )

                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(flex: 1,
                            child: Text("الفترة",textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.w300
                              ),),
                          ),
                          Expanded(flex: 1,
                            child: Text("PM 5",textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontSize: 18.0
                              ),),
                          )

                        ],
                      ),
                      Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(flex: 1,
                            child: Text("التاريخ",textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.w300
                              ),),
                          ),
                          Expanded(flex: 1,
                            child: Text("2020 - 01 - 26",textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  color: CupertinoColors.black,
                                  fontSize: 18.0
                              ),),
                          )

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          AspectRatio(aspectRatio: 7.0,
            child: Padding(padding: EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: CupertinoColors.black,
                        blurRadius: 1,
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(flex: 1,
                        child: Text("مبلغ الدفع",textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18.0,
                              fontFamily: 'NeoSansArabic',
                              fontWeight: FontWeight.w300
                          ),),
                      ),
                      Expanded(flex: 1,
                        child: Text("2 د.ك ",textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: CupertinoColors.black,
                              fontSize: 18.0,
                            fontFamily: 'NeoSansArabic',
                            fontWeight: FontWeight.w300
                          ),),
                      )

                    ],
                  ),
                ),
              ),),
          ),
          SizedBox(
            height: 10.0,
          ),
          MaterialButton(
              color: const Color(0xff6CACC5),
              elevation: 4.0,
              minWidth: 330.0,
              height: 48.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Text('إدفع الآن',style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
               fontWeight: FontWeight.w300,
               fontFamily: 'NeoSansArabic',

              ), ),
              onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));
              },
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(image: AssetImage("assets/mastercard.png"),height: 30.0),
              Image(image: AssetImage("assets/visa.png"),height: 30.0),

              Image(image: AssetImage("assets/k-net.png"),height: 30.0),
            ],
          )
        ],
      ),
    );
  }
}

