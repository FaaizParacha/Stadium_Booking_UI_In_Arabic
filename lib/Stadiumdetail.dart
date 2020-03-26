import 'package:fiver_project_work/StadiumTimeDetail.dart';
import 'package:fiver_project_work/quickSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class StadiumDetail extends StatefulWidget {
  @override
  _StadiumDetailState createState() => _StadiumDetailState();
}

class _StadiumDetailState extends State<StadiumDetail> {
  var rating = 0.0;
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
              ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 40.0,
                      height: 120.0,
                      color: Colors.green,
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          Text("مدرسة عبداللطيف النصف المتوسطة",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'NeoSansArabic',
                                fontWeight: FontWeight.bold
                            ),
                          ),
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
                          Row(
                            textDirection: TextDirection.rtl,
                            children: <Widget>[
                              InkWell(child: Text(" محافظة",textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color:Colors.green
                                ),),

                              ),
                              Text("العاصمة:"),
                              SizedBox(
                                width: 60.0,
                              ),
                              InkWell(child: Text(" منطقة",textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'NeoSansArabic',
                                    fontWeight: FontWeight.w300
                                ),),

                              ),
                              Text("اليرموك:"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40.0,
                        height: 120.0,
                        color: Colors.green,
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Text("ثانوية يعقوب الغنيم",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.bold
                              ),
                            ),
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
                            Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                InkWell(child: Text(" محافظة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.green,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),),

                                ),
                                Text("العاصمة:"),
                                SizedBox(
                                  width: 60.0,
                                ),
                                InkWell(child: Text("  منطقة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.green,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),),

                                ),
                                Text("الصليبخات:"),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40.0,
                        height: 120.0,
                        color: Colors.green,
                        child: IconButton(icon: Icon(Icons.arrow_back_ios,color: CupertinoColors.white,),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TimeDetailStadium()));
                          },),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Text("ثانوية جاسم الخرافي",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.bold
                              ),
                            ),
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
                            Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                InkWell(child: Text(" محافظة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.green,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),),

                                ),
                                Text("العاصمة:"),
                                SizedBox(
                                  width: 60.0,
                                ),
                                InkWell(child: Text(" منطقة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.green,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),),

                                ),
                                Text("قرطبة:"),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40.0,
                        height: 120.0,
                        color: Colors.green,
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Text("ثانوية عيسى الحمد",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.bold
                              ),
                            ),
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
                            Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                InkWell(child: Text(" محافظة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.green,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),),

                                ),
                                Text("العاصمة:"),
                                SizedBox(
                                  width: 60.0,
                                ),
                                InkWell(child: Text(" منطقة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.green,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),),

                                ),
                                Text("القادسية:"),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40.0,
                        height: 120.0,
                        color: Colors.green,
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          textDirection: TextDirection.rtl,
                          children: <Widget>[
                            Text("ثانوية حمد عيسى الرجيب",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'NeoSansArabic',
                                  fontWeight: FontWeight.bold
                              ),
                            ),
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
                            Row(
                              textDirection: TextDirection.rtl,
                              children: <Widget>[
                                InkWell(child: Text(" محافظة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.green,fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),),

                                ),
                                Text("العاصمة:"),
                                SizedBox(
                                  width: 60.0,
                                ),
                                InkWell(child: Text(" منطقة",textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: Colors.green,
                                      fontFamily: 'NeoSansArabic',
                                      fontWeight: FontWeight.w300
                                  ),),
                                ),
                                Text("كيفان:"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),SizedBox(height: 5.0,),
        ],
      ),
    ),
      );
  }
}
