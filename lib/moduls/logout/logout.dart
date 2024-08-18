import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class logout extends StatefulWidget {
  const logout({super.key});

  // This widget is the root of your application.
  @override
  State<logout> createState()=> Mylogout();
}
class Mylogout extends State<logout> {

  @override
  Widget build(BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("تسجيل الخروج",textAlign: TextAlign.right,),
            content: new Text("هل أنت متأكد أنك تريد المغادرة؟",textAlign: TextAlign.right),
            actions: <Widget>[
              ElevatedButton(onPressed: (){}, child: Text("نعم", style: TextStyle(color:Colors.white),textAlign: TextAlign.right),
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF09478F),alignment: Alignment.centerLeft),
              ),
              ElevatedButton(onPressed: (){}, child: Text("لا",style: TextStyle(color:Colors.white),textAlign: TextAlign.right),
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF09478F)),
              ),
         ]
          );
}}