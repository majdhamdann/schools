// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled3/moduls/login/loginController.dart';

class Login extends StatelessWidget {
  // const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.find<LoginController>();
    String name = "";
    String name2 = "";
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF09478F),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 725,
                //clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    image: DecorationImage(
                  image: AssetImage("assets/6.jpg"),
                  fit: BoxFit.cover,
                  //alignment: Alignment.center
                )),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 100,
                      top: 50,
                      child: Container(
                        //alignment: Alignment.center,
                        width: 200,
                        height: 200,
                        //padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage('assets/41.png'),
                                alignment: Alignment.topCenter)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 118,
                      top: 475,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF09478F)),
                        onPressed: () {
                          EasyLoading.show(status: 'loading.......');
                          controller.LoginOnClick();
                          // Get.offNamed('/home');
                          //
                          void onclick() {
                            EasyLoading.show(status: 'loading.......');
                             controller.LoginOnClick();
                            if (controller.loginstatus) {
                              EasyLoading.showSuccess(controller.massege);
                              Get.offNamed('/home');
                              EasyLoading.dismiss();
                            } else {
                              if (controller.massege != null)
                                EasyLoading.showError(controller.massege);
                                EasyLoading.dismiss();
                            }
                          }

                        //onclick();
                        },
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Sign in',
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
                    Positioned(
                      left: 40,
                      top: 275,
                      child: Container(
                        width: 280,
                        height: 60,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                              width: double.infinity,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  height: 0.5,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF5D5FEF),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: TextField(
                                    onChanged: (val) {
                                      controller.email = val;
                                    },
                                  )),
                                  Text('$name')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 375,
                      child: Container(
                        width: 280,
                        height: 60,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                              width: double.infinity,
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  height: 0.09,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF5D5FEF),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: TextField(
                                    onChanged: (val) {
                                      controller.passwort = val;
                                    },
                                  )),
                                  Text('$name')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
