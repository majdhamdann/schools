import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});
  // This widget is the root of your application.
  @override
  State<Profile> createState()=> MyPrfile();
}
class MyPrfile extends State<Profile> {
bool isObscurePassword=true;
  @override
  Widget build(BuildContext context) {
    // return object of type Dialog
    return Scaffold(
      appBar: AppBar(
          title: const Text("الملف الشخصي", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
          backgroundColor:Color(0xFF09478F),
          actions:[
            IconButton(onPressed: (){
            }, icon:Icon(Icons.arrow_back_ios),color: Colors.white,)
          ]),
      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/5.jpg"), fit: BoxFit.cover)),
        padding: EdgeInsets.only(left: 15,top: 20,right: 15),
        child:GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
           child: ListView(
             children: [
               Center(
                 child: Stack(
                   children: [
                     Container(
                       width: 130,
                       height: 130,
                       decoration: BoxDecoration(
                         border: Border.all(width: 4,color: Colors.white),
                         boxShadow: [
                           BoxShadow(
                             spreadRadius: 2,
                             blurRadius: 10,
                             color: Colors.blue.withOpacity(0.1)
                           )
                         ],
                         shape: BoxShape.circle,
                         image: DecorationImage(image: AssetImage(""),
                         fit:BoxFit.cover)
                       ),
                     ),
                     Positioned(
                       bottom: 0,
                         right: 0,
                         child: Container(
                       height: 40,
                           width: 40,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(width: 2,color: Colors.white),
                             color: Color(0xFF09478F)
                           ),
                           child: Icon(
                             Icons.edit,
                             color: Colors.white,
                           ),
                     ))
                   ],
                 ),
               ),
               SizedBox(height: 30,),
               buildTextField("الاسم كاملا","شيماء",false),
               buildTextField("البريد الإلكتروني","Shaimaa@gmail.com",false),
               buildTextField("كلمة السر","*********",false),
               buildTextField("الصف","الأول",false),
               SizedBox(height: 30,),
               Row(
                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
                 children: [
                   OutlinedButton(onPressed: (){}, child: Text(
                     "CENCEL",style: TextStyle(
                     fontSize: 15,
                     letterSpacing: 2,
                     color: Colors.black
                   ),
                   ),
                   style: OutlinedButton.styleFrom(
                     padding: EdgeInsets.symmetric(horizontal: 50),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                   ),),
                   ElevatedButton(onPressed: (){},
                       child:Text("SAVE",style: TextStyle(
                         fontSize: 15,
                         letterSpacing: 2,
                         color: Colors.white
                       ),),style: ElevatedButton.styleFrom(
                       backgroundColor: Color(0xFF09478F),
                       padding: EdgeInsets.symmetric(horizontal: 50),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                     ),)
                 ],
               )
             ],
           ),
        )
      ) ,
    );
  }
Widget buildTextField(String labelText,String placeholder,bool isPasswordTextField) {
  //var floatingLabelBehavior;
  return Padding(padding: EdgeInsets.only(bottom: 30),
  child:TextField(
    textAlign:TextAlign.right,
    obscureText: isPasswordTextField? isObscurePassword:false,
    decoration: InputDecoration(
      suffixIcon: isPasswordTextField?
          IconButton(onPressed: (){},
              icon: Icon(Icons.remove_red_eye,color: Colors.indigo,)):null,
          contentPadding: EdgeInsets.only(bottom: 5),
      labelText: labelText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: placeholder,
      hintStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      )
    ) ,
  ) ,);
}
}