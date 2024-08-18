import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  State<HomePage> createState()=> MyHomeState();
}
class MyHomeState extends State<HomePage>  {
  final col=[
    Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Container(
               padding: EdgeInsets.all(2),
                alignment: Alignment.center,
                width: 120,
                height: 120,
                decoration: ShapeDecoration(
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                  color: Color(0xFF22A161),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                    child:IconButton(icon:Icon(Icons.man_sharp,size: 100,color: Colors.white,),onPressed: (){
                      Get.toNamed('/attitude');
                    },),
                ),
                SizedBox(height: 15,),
                Text(
                  'سلوك الطالب',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),

              ]),
              SizedBox(width: 15),
              Column(children: [
                Container(
                  padding: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xFFFCBF1B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child:IconButton(icon:Icon(Icons.menu_book,color: Colors.white,size:100),
                  onPressed: (){
                    Get.toNamed('/homework');
                  },)
                ),
                SizedBox(height: 15,),
                Text(
                  'الواجبات المدرسية',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
            ],
          ),
          SizedBox(height: 5,width: 360,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                  padding: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xFF366488),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child:IconButton(icon:Icon(Icons.table_chart,color:Colors.white,size: 100,),
                  onPressed: (){
                    Get.toNamed('/studenttable');
                  },)
                ),
                SizedBox(height: 15,),
                Text(
                  'الجدول الدراسي',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
              SizedBox(width: 15),
              Column(children: [
                Container(
                  padding: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xFFB11BFC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child:IconButton(icon:Icon(Icons.table_view,color:Colors.white,size:100),
                  onPressed: (){
                    Get.toNamed('/exam');
                  },)
                ),
                SizedBox(height: 15,),
                Text(
                  'جدول الامتحان',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
            ],
          ),
          SizedBox(height: 5,width: 360,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                  padding: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xFF84CE76),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child:IconButton(icon:Icon(Icons.newspaper_sharp,size: 100,color: Colors.white,),
                  onPressed: (){
                    Get.toNamed('/paper');
                  },)
                ),
                SizedBox(height: 15,),
                Text(
                  'أخبارالمدرسة',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
              SizedBox(width: 15),
              Column(children: [
                Container(
                  padding: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xFFC56C69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: IconButton(icon:Icon(Icons.my_library_books_outlined,color: Colors.white,size:100),
                  onPressed: (){
                    Get.toNamed('/mark');
                  },)
                ),
                SizedBox(height: 15,),
                Text(
                  'العلامات التفصيلية',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
            ],
          ),
        ]),
    Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                  padding: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    color: Color(0xFF86D3C4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child:IconButton(icon:Icon(Icons.calendar_month_outlined,size: 100,color: Colors.white,),
                  onPressed: (){
                        Get.toNamed('/attend');
                  },)
                ),
                SizedBox(height: 15,),
                Text(
                  'الحضور و الغباب',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),

              ]),
              SizedBox(width: 15),
              Column(children: [
                Container(
                    padding: EdgeInsets.all(2),
                    alignment: Alignment.center,
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                      color: Color(0xFFD7BD79),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child:IconButton(icon:Icon(Icons.book_rounded,color: Colors.white,size:100),
                    onPressed: (){
                      Get.toNamed('/supplier');
                    },)
                ),
                SizedBox(height: 15,),
                Text(
                  'الملحقات',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
            ],
          ),
          SizedBox(height: 5,width: 360,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                    padding: EdgeInsets.all(2),
                    alignment: Alignment.center,
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                      color: Color(0xFF366488),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child:IconButton(icon:Icon(Icons.grading_sharp,color:Colors.white,size: 100,),
                    onPressed: (){
                      Get.toNamed('/subject');
                    },)
                ),
                SizedBox(height: 15,),
                Text(
                  'الوحدات',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
              SizedBox(width: 15),
              Column(children: [
                Container(
                    padding: EdgeInsets.all(2),
                    alignment: Alignment.center,
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                      color: Color(0xFFD75916),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child:IconButton(icon:Icon(Icons.bus_alert_outlined,color:Colors.white,size:100)
                    ,onPressed: (){
                      Get.toNamed('');
                    },)
                ),
                SizedBox(height: 15,),
                Text(
                  'حالة الباص',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
            ],
          ),
          SizedBox(height: 5,width: 360,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                    padding: EdgeInsets.all(2),
                    alignment: Alignment.center,
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                      color: Color(0xFF84CE76),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child:IconButton(icon:Icon(Icons.workspaces_sharp,size: 100,color: Colors.white,),onPressed: (){},)
                ),
                SizedBox(height: 15,),
                Text(
                  'أوراق العمل',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height:0.5,
                  ),
                ),
              ]),
              SizedBox(width: 15),
            ],
          ),
        ]),

  ];
  int now=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الصفحة الرئيسية", style: TextStyle(color: Colors.white),),
        backgroundColor:Color(0xFF09478F),
        actions:<Widget> [
          IconButton(onPressed: (){
            Get.toNamed('');
          },
              icon: Icon(Icons.notifications_active_sharp,color: Colors.white,)
          ),
    IconButton(onPressed: (){},
    icon: Icon(Icons.logout,color: Colors.white,)),

      ],),
     body:Container(
        width: 360,
        height:700,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/6.jpg"), fit: BoxFit.cover)),
      child:Container(
          alignment: Alignment.center
          ,child:Column(
        children: [
          Padding(padding:EdgeInsets.all(18),child:Container(
              width: 301,
              height: 117,
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              decoration: ShapeDecoration(
                color: Color(0xFFFEF7FF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  SizedBox(
                  width: 180,
                  height: 58,
                  child: Text(
                      'مرحبا بك \n\nstudent ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF1D1B20),
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height:0.7 ,
                        letterSpacing: -0.23,
                      ),),),
            Container(
            width: 86,
            height: 86,
            child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 86,
                      height: 86,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://via.placeholder.com/86x86"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  ])),]))),
          SingleChildScrollView(child:Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(options: CarouselOptions(
                 //   autoPlay: true,
                    height: 450,
                    onPageChanged: (index, reson) {
                      setState(() {
                        now = index;
                      });
                    }
                ), items: col,)
              ],


            )),
         Container(
             width: 360,
             height: 65,
             decoration: ShapeDecoration(
               color: Color(0xFF09478F),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(2),
               ),
             ),
             child: Row(
                 mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                 decoration: BoxDecoration(),
                 child:IconButton(icon:Icon(Icons.newspaper,color: Colors.white,size:40,),onPressed: (){
                   setState(() {

                   });
                 },)
                   ),
                   Container(
                       decoration: BoxDecoration(),
                       child:IconButton(icon:Icon(Icons.face_6_outlined,color: Colors.white,size:40,),
                       onPressed: (){
                         setState(() {

                         });
                       },)
                   ),
                   Container(
                       decoration: BoxDecoration(),
                       child:IconButton(icon:Icon(Icons.manage_accounts_outlined,color: Colors.white,size:40,),onPressed: (){
                         setState(() {

                         });
                       },)
                   ),
                   Container(
                       decoration: BoxDecoration(),
                       child:IconButton(icon:Icon(Icons.home_outlined,color: Colors.white,size:40,),onPressed: (){},)
                   ),
                   ],))
        ]
          )
      )));
  }}