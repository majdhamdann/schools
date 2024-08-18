import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class Supports extends StatefulWidget {
  //const Supports({super.key});

  // This widget is the root of your application.
  @override
  State<Supports> createState()=> MySupports();
}
class MySupports extends State<Supports>  {
  bool isnotvisible=false;
  bool isnotvisible1=false;
  bool isnotvisible2=false;
  bool isnotvisible3=false;
  bool isnotvisible4=false;
  bool isnotvisible5=false;
  int c=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("الملحقات", style: TextStyle(color: Colors.white),),
          backgroundColor:Color(0xFF09478F),
          actions:<Widget> [
            IconButton(onPressed: (){},
                icon: IconButton(icon:Icon(Icons.notifications_active_sharp,color: Colors.white,),onPressed: (){},)
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.home,color: Colors.white,)),

          ],),
        body: Container(
          //  alignment: Alignment.center,
            height:1000 ,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/6.jpg"), fit: BoxFit.cover)),
            child:SingleChildScrollView(
              child: Container(
                  width:360,
                  alignment: Alignment.center
                  ,child:Column(

                  children: [
                    SizedBox(height:70,width: 360,),
                    Stack(children:[
                      Positioned(child: Container(
                          width: 200,
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                          decoration: ShapeDecoration(
                            color: Color(0x8F2A1F8A),
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
                              children:[
                                Positioned(
                                  left: 25,
                                  top: 0,
                                  child: Container(
                                    height:25,
                                    alignment: Alignment.centerLeft,
                                    child:IconButton(
                                      icon:Icon(Icons.arrow_drop_down_circle_rounded,color: Colors.white,),alignment:Alignment.center,onPressed: (){
                                      setState(() {
                                        isnotvisible=!isnotvisible;
                                      });
                                    },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:100,
                                  height:20,
                                  child: Text(
                                    'ملفات pdf ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),),
                              ])),),]),
                    SizedBox(height:2,width:360),
                    Visibility(visible:isnotvisible,child: Container(
                        height: 150,
                        width: 300,
                        child:ListView(
                          children: [
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),

                          ],
                        )
                    ),),
                    SizedBox(height:50,width:360),
                    Stack(children:[
                      Positioned(child: Container(width: 200,
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                          decoration: ShapeDecoration(
                            color: Color(0x8F2A1F8A),
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
                              children:[
                                Positioned(
                                  left: 25,
                                  top: 0,
                                  child: Container(
                                    height:25,
                                    alignment: Alignment.centerLeft,
                                    child:IconButton(
                                      icon:Icon(Icons.arrow_drop_down_circle_rounded,color: Colors.white,),alignment:Alignment.center,onPressed: (){
                                      setState(() {
                                        isnotvisible1=!isnotvisible1;
                                      });
                                    },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:100,
                                  height:20,
                                  child: Text(
                                    ' ملفات صوتية',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),),
                              ])),),]),
                    SizedBox(height:2,width:360),
                    Visibility(visible:isnotvisible1,child: Container(
                        height: 150,
                        width: 300,
                        child:ListView(
                          children: [
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),

                          ],
                        )
                    ),),
                    SizedBox(height:50,width:360),
                    Stack(children:[
                      Positioned(child: Container(
                          width: 200,
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                          decoration: ShapeDecoration(
                            color: Color(0x8F2A1F8A),
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
                              children:[
                                Positioned(
                                  left: 25,
                                  top: 0,
                                  child: Container(
                                    height:25,
                                    alignment: Alignment.centerLeft,
                                    child:IconButton(
                                      icon:Icon(Icons.arrow_drop_down_circle_rounded,color: Colors.white,),alignment:Alignment.center,onPressed: (){
                                      setState(() {
                                        isnotvisible2=!isnotvisible2;
                                      });
                                    },
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:100,
                                  height:20,
                                  child: Text(
                                    'مقاطع الفيديو',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),),
                              ])),),]),
                    SizedBox(height:2,width:360),
                    Visibility(visible:isnotvisible2,child: Container(
                        height: 150,
                        width: 300,
                        child:ListView(
                          children: [
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),
                            Container(
                              color: Color(0x8EE09CF5),
                              height: 50,
                              child: Row(
                                children: [
                                  IconButton(
                                    icon:Icon(Icons.download,color: Color(
                                        0xFF4B0556),),alignment:Alignment.centerLeft,onPressed: (){
                                    setState(() {
                                      isnotvisible1=!isnotvisible1;
                                    });
                                  },
                                  ),
                                  SizedBox(width: 50,),
                                  Text(
                                    'اسم الملف الأول ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      height:0.7 ,
                                      // letterSpacing: -0.23,
                                    ),),

                                ],
                              ),
                            ),

                          ],
                        )
                    ),),
                    // SizedBox(height:310,width:360),

                  ]) ),
            )));
  }}