import 'package:fiver_project_work/quickSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class TimeDetailStadium extends StatefulWidget {
  @override
  _TimeDetailStadiumState createState() => _TimeDetailStadiumState();
}

class _TimeDetailStadiumState extends State<TimeDetailStadium> {
  @override
  Widget build(BuildContext context) {
    //final title = 'Horizontal List';
    bool _isSwitched = false;
    var rating = 0.0;

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
                ),
              ],

              title: Text("تفاصيل الملعب",textDirection: TextDirection.rtl,style: TextStyle(
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
            SizedBox(height:5.0),
            AspectRatio(
              aspectRatio: 1.5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(

                      child: Image.asset("assets/image.png",fit: BoxFit.fitWidth,)
                  ),
                  Container(
                      child: Image.asset("assets/image.png",fit: BoxFit.fitWidth,)
                  ),

                ],
              ),
            ),
            SizedBox(height: 2.0,),
            AspectRatio(aspectRatio: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             textDirection: TextDirection.rtl,
                             children: <Widget>[
                               Text("ثانوية جاسم الخرافي",
                                 textDirection: TextDirection.rtl,
                                 style: TextStyle(
                                   fontSize: 20.0,
                                     fontFamily: 'NeoSansArabic',
                                     fontWeight: FontWeight.w300
                                 ),
                               ),SizedBox(width: 170.0,),
                               Column(
                                 children: <Widget>[
                                   Image.asset("assets/favouriteicon-1.png",height: 20.0,),
                                   Text("المفضلة",textDirection: TextDirection.rtl,),
                                 ],
                               )
                             ],
                           ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                Text("العنوان",textDirection: TextDirection.rtl,style: TextStyle(
                                    color: Colors.green,
                                  fontSize: 15.0,
                                    fontFamily: 'NeoSansArabic',
                                    fontWeight: FontWeight.w300
                                ),),
                                Text(" : قرطبة - قطعة 4 - شارع 5 – العاصمة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: Colors.black,
                                    fontSize: 15.0,
                                      fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              textDirection: TextDirection.rtl,

                              children: <Widget>[
                                Text("الموقع ",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 15.0,
                                      fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(width: 10.0,),
                                Image.asset("assets/kuwaitfinderlogo.png",height: 20.0,),
                                SizedBox(width: 10.0,),
                                Image.asset("assets/googlemapsicon.png",height: 20.0,),
                                SizedBox(width: 145.0,),
                                SmoothStarRating(
                                  color: CupertinoColors.systemYellow,
                                  borderColor: CupertinoColors.systemYellow,
                                  rating: rating,
                                  size: 25,
                                  filledIconData: Icons.star,
                                  halfFilledIconData: Icons.star_half,
                                  defaultIconData: Icons.star_border,
                                  starCount: 5,
                                  allowHalfRating: false,
                                  spacing: 0.0,
                                  onRatingChanged: (value) {
                                    setState(() {

                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.0,),
            AspectRatio(aspectRatio: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Text("الأوقات المتوفرة",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 20.0,
                              fontFamily: 'NeoSansArabic',
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Transform.scale(
                                  scale: 1.2,
                                  child: Switch(activeColor: Colors.green,
                                    onChanged: (val) => setState(() => _isSwitched = val),
                                    value: _isSwitched,
                                  ),
                                ),
                                Text("PM 4:00")
                              ],
                            ),
                            SizedBox(width: 12.0,),
                            Column(
                              children: <Widget>[
                                Transform.scale(
                                  scale: 1.2,
                                  child: Switch(activeColor: Colors.green,
                                    onChanged: (val) => setState(() => _isSwitched = val),
                                    value: _isSwitched,
                                  ),
                                ),
                                Text("PM 5:00")
                              ],
                            ),SizedBox(width: 12.0,),
                            Column(
                              children: <Widget>[
                                Transform.scale(
                                  scale: 1.2,
                                  child: Switch(activeColor: Colors.green,
                                    onChanged: (val) => setState(() => _isSwitched = val),
                                    value: _isSwitched,
                                  ),
                                ),
                                Text("PM 6:00")
                              ],
                            ),SizedBox(width: 12.0,),
                            Column(
                              children: <Widget>[
                                Transform.scale(
                                  scale: 1.2,
                                  child: Switch(activeColor: Colors.green,
                                    onChanged: (val) => setState(() => _isSwitched = val),
                                    value: _isSwitched,
                                  ),
                                ),
                                Text("PM 7:00")
                              ],
                            ),SizedBox(width: 12.0,),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 10.0,),
                                Image.asset("assets/bookedicon.png",height: 30.0,),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text("PM 8:00")
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.0,),
            AspectRatio(aspectRatio: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("مقاسات الملعب",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 20.0,
                              fontFamily: 'NeoSansArabic',
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        Image.asset("assets/image.png")

                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.0,),
            MaterialButton(
              color: Colors.green,
              elevation: 4.0,
              minWidth: 330.0,
              height: 48.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Text('حجز',style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ), ),
              onPressed: () {},
            ),SizedBox(height: 5.0,),
          ],
      ),
        )
    );

  }
}
