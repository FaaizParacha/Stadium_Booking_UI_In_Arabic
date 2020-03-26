import 'package:fiver_project_work/quickSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'StadiumTimeDetail.dart';
class StadiumList extends StatefulWidget {
  StadiumList({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _StadiumListState createState() => _StadiumListState();
}

class _StadiumListState extends State<StadiumList> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
        child: Scaffold(
          appBar: AppBar(
                backgroundColor:Color.fromARGB(200, 150, 250, 200),
                centerTitle: true,
                leading: IconButton(icon: Icon(CupertinoIcons.search),
                    onPressed:() {
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
      body:  Column(
        children: <Widget>[
          SizedBox(height: 15.0,),
       Container(
         height: 40.0,
         color: Colors.green,
         child: TabBar( isScrollable: true,
           indicator: TriangleTabIndicator(color: Colors.white,),
           tabs: <Widget>[
             Tab(
               child: Text("مبارك الكبير",style: TextStyle(
                   fontFamily: 'NeoSansArabic',
                   fontWeight: FontWeight.w700,
                   color: Colors.white
               ),),

             ),
             Tab(
               child: Text("الأحمدي",style: TextStyle(
                   fontFamily: 'NeoSansArabic',
                   fontWeight: FontWeight.w700,
                   color: Colors.white
               ),),

             ),
             Tab(
               child: Text("الجهراء",style: TextStyle(
                   fontFamily: 'NeoSansArabic',
                   fontWeight: FontWeight.w700,
                   color: Colors.white
               ),),

             ),
             Tab(
               child: Text("الفروانية",style: TextStyle(
                   fontFamily: 'NeoSansArabic',
                   fontWeight: FontWeight.w700,
                   color: Colors.white
               ),),
             ),
             Tab(
               child: Text("حولي",style: TextStyle(
                   fontFamily: 'NeoSansArabic',
                   fontWeight: FontWeight.w700,
                   color: Colors.white
               ),),
             ),
             Tab(
               child: Text("العاصمة",style: TextStyle(
                   fontFamily: 'NeoSansArabic',
                   fontWeight: FontWeight.w700,
                   color: Colors.white
               ),),
             ),
             Tab(
               child: Text("الكل   ",style: TextStyle(
                   fontFamily: 'NeoSansArabic',
                   fontWeight: FontWeight.w700,
                   color: Colors.white
               ),),
             ),
           ],
         ),
       ),
          Expanded(
            flex: 1,
              child:TabBarView(
                children: <Widget>[
                  Text('Tab 7'),
                  Text('Tab 6'),
                  Text('Tab 5'),
                  Text('Tab 4'),
                  Text('Tab 3'),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
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
                                        Text("مدرسة عبداللطيف النصف المتوسطة",
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'NeoSansArabic',
                                              fontWeight: FontWeight.w700
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
                                        Text("ثانوية يعقوب الغنيم",
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'NeoSansArabic',
                                              fontWeight: FontWeight.w700
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
                                                fontWeight: FontWeight.w700
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
                                      child: Icon(Icons.arrow_back_ios,color: Colors.white,),
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
                                                fontWeight: FontWeight.w700
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
                                                fontWeight: FontWeight.w700
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
                                                fontWeight: FontWeight.w700
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
                  Text('Tab 1'),
                ],
              ),
          )
        ],
      )
    )
    );
  }
}
class TriangleTabIndicator extends Decoration {
  final BoxPainter _painter;

  TriangleTabIndicator({@required Color color, @required double radius})
      : _painter = DrawTriangle(color);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class DrawTriangle extends BoxPainter {
  Paint _paint;

  DrawTriangle(Color color) {
    _paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset triangleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - 10);
    var path = Path();

    path.moveTo(triangleOffset.dx, triangleOffset.dy);
    path.lineTo(triangleOffset.dx + 10, triangleOffset.dy + 10);
    path.lineTo(triangleOffset.dx - 10, triangleOffset.dy + 10);

    path.close();
    canvas.drawPath(path, _paint);
  }
}