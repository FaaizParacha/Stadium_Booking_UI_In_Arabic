import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuickSearch extends StatefulWidget {
  @override
  _QuickSearchState createState() => _QuickSearchState();
}

class _QuickSearchState extends State<QuickSearch> {
  final List<String> _dropdownValues = [

  ];

  String _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AppBar(
              elevation: 2.0,
              backgroundColor:Colors.grey.shade300,
              title: Text("البحث",textDirection: TextDirection.rtl,
                style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.only(left:12.0,top: 12.0),
                child: Text("إرسال",textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.green,fontSize: 20.0,fontFamily: 'NeoSansArabic',
                      fontWeight: FontWeight.w300),),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right:12.0,top: 12.0),
                  child: Text("إلغاء",textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.green,
                        fontSize: 20.0,fontFamily: 'NeoSansArabic',
                        fontWeight: FontWeight.w300),),
                ),
              ],

            ),
            SizedBox(height: 30.0,),
            AspectRatio(aspectRatio: 6.5,
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
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: TextField(
                      textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: "تاريخ الحجز",hintStyle: TextStyle(
                          fontSize: 20.0,
                        color: Colors.black,fontFamily: 'NeoSansArabic',
                          fontWeight: FontWeight.w300
                      ),
                        prefixIcon: IconButton(
                          icon: Image.asset("assets/dateicon.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            AspectRatio(aspectRatio: 6.5,
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
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          iconSize: 30.0,

                          hint: Text("إختر المحافظة",textDirection:TextDirection.rtl,textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 20.0,
                              color: Colors.black,fontFamily: 'NeoSansArabic',
                                fontWeight: FontWeight.w300
                          ),),
                          items: <String>[].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            AspectRatio(aspectRatio: 6.5,
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
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          iconSize: 30.0,

                          hint: Text("إختر المنطقة",textDirection:TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 20.0,
                              color: Colors.black,fontFamily: 'NeoSansArabic',
                              fontWeight: FontWeight.w300
                          ),),
                          items: <String>[].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            AspectRatio(aspectRatio: 6.5,
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
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          iconSize: 30.0,

                          hint: Text("إختر الملعب",textDirection:TextDirection.rtl,
                            textAlign: TextAlign.right,style: TextStyle(
                              color: Colors.black,fontFamily: 'NeoSansArabic',
                              fontWeight: FontWeight.w300,
                            fontSize: 20.0,
                          ),),
                          items: <String>[].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            AspectRatio(aspectRatio: 6.5,
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
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: TextField(
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: "توقيت الحجز",hintStyle: TextStyle(
                          fontSize: 20.0,
                        color: Colors.black,fontFamily: 'NeoSansArabic',
                          fontWeight: FontWeight.w300
                      ),
                        prefixIcon: IconButton(
                          icon: Image.asset("assets/timeicon2.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),SizedBox(height: 5.0,),
          ],
        ),
      ),
    );
  }
}
