import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class MarksTable extends StatefulWidget {
  const MarksTable({super.key});

  // This widget is the root of your application.
  @override
  State<MarksTable> createState()=> MyMarks();
}
class MyMarks extends State<MarksTable>  {
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
          title: const Text("العلامات التفصيلية", style: TextStyle(color: Colors.white),),
          backgroundColor:Color(0xFF09478F),
          actions:<Widget> [
            IconButton(onPressed: (){},
                icon: IconButton(icon:Icon(Icons.notifications_active_sharp,color: Colors.white,),onPressed: (){},)
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.home,color: Colors.white,)),

          ],),
        body:SingleChildScrollView(
       child: Container(
         height: 1000,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/6.jpg"), fit: BoxFit.cover)),
              child:Container(
                width:360,
                alignment: Alignment.center
                ,child:Column(
                children: [
                SizedBox(height:50,width: 360,),
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
                                width:200,
                                height:20,
                                child: Text(
                                  'رياضيات ',
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
                SizedBox(height:10,width:360),
                Visibility(visible:isnotvisible,child: Container(
                        child:Table(
                          border: TableBorder.all(color: Colors.blueAccent),
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            const TableRow
                              (
                                decoration:BoxDecoration(
                                  color: Colors.white
                                ),
                              children: [
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                child: Text("data"),
                                )),
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(5.0),
                                      child: Text("data"),
                                    ))
                              ]
                            ),...List.generate(4, (index) => TableRow
                              (
                                decoration:BoxDecoration(
                                    color: Colors.white
                                ),
                                children: [
                                  TableCell(
                                      verticalAlignment:TableCellVerticalAlignment.middle,
                                      child: Padding(padding: EdgeInsets.all(8.0),
                                        child: Text("data"),
                                      )),
                                  TableCell(
                                      verticalAlignment:TableCellVerticalAlignment.middle,
                                      child: Padding(padding: EdgeInsets.all(8.0),
                                        child: Text("data"),
                                      ))
                                ]
                            ),)
                          ],
                        )
                  ),),
                  Stack(children:[
                    Positioned(child: Container(width: 301,
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
                                width:200,
                                height:20,
                                child: Text(
                                  'اللغة العربية ',
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
                  SizedBox(height:10,width:360),
                  Visibility(visible:isnotvisible1,child: Container(
                      child:Table(
                        border: TableBorder.all(color: Colors.blueAccent),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          const TableRow
                            (
                              decoration:BoxDecoration(
                                  color: Colors.white
                              ),
                              children: [
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    )),
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(5.0),
                                      child: Text("data"),
                                    ))
                              ]
                          ),...List.generate(4, (index) => TableRow
                            (
                              decoration:BoxDecoration(
                                  color: Colors.white
                              ),
                              children: [
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    )),
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    ))
                              ]
                          ),)
                        ],
                      )
                  ),),
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
                                width:200,
                                height:20,
                                child: Text(
                                  'علوم ',
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
                  SizedBox(height:10,width:360),
                  Visibility(visible:isnotvisible2,child: Container(
                      child:Table(
                        border: TableBorder.all(color: Colors.blueAccent),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          const TableRow
                            (
                              decoration:BoxDecoration(
                                  color: Colors.white
                              ),
                              children: [
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    )),
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(5.0),
                                      child: Text("data"),
                                    ))
                              ]
                          ),...List.generate(4, (index) => TableRow
                            (
                              decoration:BoxDecoration(
                                  color: Colors.white
                              ),
                              children: [
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    )),
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    ))
                              ]
                          ),)
                        ],
                      )
                  ),),
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
                                  height:25,
                                  alignment: Alignment.centerLeft,
                                  child:IconButton(
                                    icon:Icon(Icons.arrow_drop_down_circle_rounded,color: Colors.white,),alignment:Alignment.center,onPressed: (){
                                    setState(() {
                                      isnotvisible3=!isnotvisible3;
                                    });
                                  },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:200,
                                height:20,
                                child: Text(
                                  ' اللغة الإنكليزية',
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
                  SizedBox(height:10,width:360),
                  Visibility(visible:isnotvisible3,child: Container(
                      child:Table(
                        border: TableBorder.all(color: Colors.blueAccent),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          const TableRow
                            (
                              decoration:BoxDecoration(
                                  color: Colors.white
                              ),
                              children: [
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    )),
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(5.0),
                                      child: Text("data"),
                                    ))
                              ]
                          ),...List.generate(4, (index) => TableRow
                            (
                              decoration:BoxDecoration(
                                  color: Colors.white
                              ),
                              children: [
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    )),
                                TableCell(
                                    verticalAlignment:TableCellVerticalAlignment.middle,
                                    child: Padding(padding: EdgeInsets.all(8.0),
                                      child: Text("data"),
                                    ))
                              ]
                          ),)
                        ],
                      )
                  ),),


           ]) ))));
  }}