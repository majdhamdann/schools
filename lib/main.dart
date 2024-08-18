import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:http/http.dart';
import 'package:untitled3/moduls/attendence/attendance.dart';
import 'package:untitled3/moduls/attendence/attendbuilding.dart';
import 'package:untitled3/moduls/attitude/attitude.dart';
import 'package:untitled3/moduls/attitude/attitudebuilding.dart';
import 'package:untitled3/moduls/exam/exam.dart';
import 'package:untitled3/moduls/exam/exambuilding.dart';
import 'package:untitled3/moduls/homepage/homepage.dart';
import 'package:untitled3/moduls/homework/homework.dart';
import 'package:untitled3/moduls/homework/homeworkbuild.dart';
import 'package:untitled3/moduls/login/login.dart';
import 'package:untitled3/moduls/login/loginbuilding.dart';
import 'package:untitled3/moduls/mainlesson/mainlesson.dart';
import 'package:untitled3/moduls/mainlesson/mainlessonbuilding.dart';
import 'package:untitled3/moduls/marks/markbuilding.dart';
import 'package:untitled3/moduls/marks/marks.dart';
import 'package:untitled3/moduls/papernews/papernews.dart';
import 'package:untitled3/moduls/papernews/papernewsbuliding.dart';
import 'package:untitled3/moduls/profile/profile.dart';
import 'package:untitled3/moduls/profile/profileBuind.dart';
import 'package:untitled3/moduls/student/stubentbuilding.dart';
import 'package:untitled3/moduls/student/student_page.dart';
import 'package:untitled3/moduls/subject/subject.dart';
import 'package:untitled3/moduls/subject/subjectbuilding.dart';
import 'package:untitled3/moduls/suppliers/supplier.dart';
import 'package:untitled3/moduls/suppliers/supplierbuilding.dart';
import 'package:untitled3/moduls/support/support.dart';
import 'package:untitled3/moduls/support/supportbuilding.dart';

void main()=> runApp(
  
  GetMaterialApp(
    builder: EasyLoading.init(),

    home:MyApp(),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/login', page: () => Login(),binding: Loginbuilding()),
        GetPage(name: '/studenttable', page: () => StudyTable(),binding: Stubentbuilding()),
        GetPage(name: '/mark', page: () => MarksTable(),binding: Markbuilding()),
        GetPage(name: '/paper', page: () => PaperNews(),binding: Papernewsbuliding()),
        GetPage(name: '/attend', page: () => AttendanceTable(),binding: Attendbuilding()),
        GetPage(name: '/supplier', page: () => Suppliers(),binding: Supplierbuilding()),
        GetPage(name: '/exam', page: () => ExamsTable(),binding: Exambuilding()),
        GetPage(name: '/homework', page: () => HomeWork(),binding: Homeworkbuild()),
        GetPage(name: '/subject', page: () => Subjects(),binding: Subjectbuilding()),
        GetPage(name: '/attitude', page: () => attitude(),binding: AttitudBind()),
        GetPage(name: '/support', page: () => Supports(),binding: Supportbuilding()),
        GetPage(name: '/mainlesson', page: () => MainLessons(),binding: Mainlessonbuilding()),
        GetPage(name: '/profile', page: () => Profile(),binding: Profilebuind()),

      ],
theme: ThemeData(
  fontFamily: "Roboto",
),
));

class MyApp extends StatefulWidget {

  
  const MyApp({super.key});
  
   
  // This widget is the root of your application.
  @override
  State<MyApp> createState()=> _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: const Text("", style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF09478F),),
      body: content(),);
  }

  Widget content() {
    final myitems = [
    Column(
        children: [
        Container(
        width: 280,
        height: 500,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white,image:DecorationImage(image: AssetImage("assets/1.jpg"),fit:BoxFit.cover )),),
          SizedBox(
            height:10),
      SizedBox(
        height:75,
        width: 200,
        child: Text(
          "تتبع\n\nقم بقم بتتبع حالة الباص لضمان وصول ولدك بسلام إلى المدرسة",style: TextStyle(
          height: 1,
        ),textAlign: TextAlign.center,
      ),)
      ],),
      Column(
        children: [
          Container(
            width: 280,
            height: 500,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white,image:DecorationImage(image: AssetImage("assets/3.jpg"),fit:BoxFit.cover )),),
          SizedBox(
              height:10),
          SizedBox(
            height:78,
            width: 200,
            child: Text(
              "تصفح\n\nقم بالاطلاع على الواجبات الدراسية و كل ما يتعلق بالمواد الخاصة بمدرستك من أي مكان",style: TextStyle(
              height: 1,
            ),textAlign: TextAlign.center,
            ),)
        ],),
      Column(
        children: [
          Container(
            width: 280,
            height: 500,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white,image:DecorationImage(image: AssetImage("assets/7.jpg"),fit:BoxFit.cover )),),
          SizedBox(
              height:10),
          SizedBox(
            height:75,
            width: 200,
            child: Text(
              "تواصل\n\nقم بالتواصل مع المدرسين و إدارة المدرسة لمعرفة كل التطورات الخاصة بمسيرة ولدك الدراسية",style: TextStyle(
              height: 1,
            ),textAlign: TextAlign.center,
            ),)
        ],),
    ];
    int cur = 0;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(options: CarouselOptions(
                autoPlay: true,
                height: 600,
                onPageChanged: (index, reson) {
                  setState(() {
                    cur = index;
                  });
                }
            ), items: myitems,),
            Positioned(
              left: 118,
              top: 475,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF09478F)),
                onPressed: (){
                   Get.toNamed('/login');
                },
                child:
                const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ابدأ',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 18,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      height: 0.5,
                    ),
                  ),
                ],
              ),
              ),
            ),
          ],))
    );
       }
 

}
