import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class Suppliers extends StatefulWidget {
  const Suppliers({super.key});

  // This widget is the root of your application.
  @override
  State<Suppliers> createState()=> MySuppliersState();
}
class MySuppliersState extends State<Suppliers>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("الملحقات", style: TextStyle(color: Colors.white),),
          backgroundColor:Color(0xFF09478F),
          actions:<Widget> [
            IconButton(onPressed: (){
              
            },
                icon: Icon(Icons.notifications_active_sharp,color: Colors.white,)
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.logout,color: Colors.white,)),

          ],),
        body:Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/6.jpg"), fit: BoxFit.cover)),
                    child:Padding(padding: EdgeInsets.all(20),child:GridView.count(crossAxisCount: 2,
                    crossAxisSpacing: 5,
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
                            child:IconButton(icon:Icon(Icons.receipt_rounded,size: 100,color: Colors.white,),onPressed: (){
                              Get.toNamed('/subject');
                            },),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'اللغة العربية',
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
                              child:IconButton(icon:Icon(Icons.abc_outlined,color: Colors.white,size:100),onPressed: (){
                                Get.toNamed('/subject');
                              },)
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'اللغة الإنجليزية',
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
                              child:IconButton(icon:Icon(Icons.monitor_heart_outlined,color:Colors.white,size: 100,),onPressed: (){
                                Get.toNamed('/subject');
                              },)
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'العلوم الأساسية',
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
                              child:IconButton(icon:Icon(Icons.calculate_outlined,color:Colors.white,size:100),onPressed: (){
                                 Get.toNamed('/subject');
                              },)
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'الرياضيات',
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
                              child:IconButton(icon:Icon(Icons.collections_bookmark,size: 100,color: Colors.white,),onPressed: (){
                                Get.toNamed('/subject');
                              },)
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'اللغة الفرنسية',
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
                              child: IconButton(icon:Icon(Icons.my_library_books_outlined,color: Colors.white,size:100),onPressed: (){
                                Get.toNamed('/subject');
                              },)
                          ),
                          SizedBox(height: 15,),
                          Text(
                            'التربية الإسلامية',
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
                ))

            );
  }}