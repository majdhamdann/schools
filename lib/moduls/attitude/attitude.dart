import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class attitude extends StatefulWidget {
  const attitude({super.key});

  // This widget is the root of your application.
  @override
  State<attitude> createState()=> Myattitude();
}
class  Myattitude extends State<attitude>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("سلوك الطالب", style: TextStyle(color: Colors.white),),
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
            child:Container(
                width:360,
                alignment: Alignment.center
                ,child:Column(
                children: [
                  SizedBox(height:70,width: 360,),
                  Stack(children:[
                    Positioned(child: Container(
                        width: 250,
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
                                  alignment: Alignment.topCenter,
                                  child:IconButton(
                                    icon:Icon(Icons.accessibility_rounded,color: Colors.white,),alignment:Alignment.center,onPressed: (){
                                    setState(() {
                                    });
                                  },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:150,
                                height:20,
                                child: Text(
                                  ' سلوك الطالب ',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 22,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    height:0.7 ,
                                    // letterSpacing: -0.23,
                                  ),),),
                            ])),),]),
                  Stack(children:[
                    Positioned(child: Container(width: 275,height: 350,
                      //  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child:
                                SizedBox(
                                  child:Text(
                                  'الى ولي امر الطاالب ',
                                textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 22,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    height:0.7 ,
                                    // letterSpacing: -0.23,
                                  ),),),
                            )),]),

                ]) )));
  }}