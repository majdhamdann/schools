import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
class AttendanceTable extends StatefulWidget {
  const AttendanceTable({super.key});

  // This widget is the root of your application.
  @override
  State<AttendanceTable> createState()=> Attendance();
}
class Attendance extends State<AttendanceTable>  {
  bool isnotvisible=false;
  bool isnotvisible1=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("الحضور و الغياب", style: TextStyle(color: Colors.white),),
          backgroundColor:Color(0xFF09478F),
          actions:<Widget> [
            IconButton(onPressed: (){},
                icon: IconButton(icon:Icon(Icons.notifications_active_sharp,color: Colors.white,),onPressed: (){},)
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.home,color: Colors.white,)),

          ],),
        body:
        Container(
            width: 360,
            height:700,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/6.jpg"), fit: BoxFit.cover)),
            child:Container(
                width:360,
                alignment: Alignment.center
                ,child:Column(
                children: [
                 SizedBox(height: 50,width: 360,),
                 Stack(children:[
                    Positioned(child: Container(
                        width: 301,
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
                                  height: 25,
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
                                width:200,
                                height: 25,
                                child: Text(
                                  'عدد أيام الحضور ',
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
                  Visibility(visible:isnotvisible,child: Container(
                    width: 350,
                    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                    decoration: ShapeDecoration(
                        color: Color(0xFFFEF7FF),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text("2 أيام",style: TextStyle(fontFamily: 'Robot',fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),),
                  SizedBox(height: 25,width: 360,),
                  Stack(children:[
                    Positioned(child: Container(
                        width: 301,
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
                                child: Container(
                                  //padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                                  height: 25,
                                  alignment: Alignment.center,
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
                                width:200,
                                height: 25,
                                child: Text(
                                  'عدد أيام الغياب',
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
                  Visibility(visible:isnotvisible1,child: Container(
                    width: 350,
                    padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                    decoration: ShapeDecoration(
                        color: Color(0xFFFEF7FF),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text("5 ايام",style: TextStyle(fontFamily: 'Robot',fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),),



                ]) )));
  }}