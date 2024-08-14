import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/controllers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Expanded(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.pinkAccent.shade100],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.08),
                  Text(
                    "Sign in",
                    style: TextStyle(
                        color: Color(0xff1f2147),
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.06),
                  TextField(
                    controller: loginController.txtEmail,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: 'Username or email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  TextField(
                    controller: loginController.txtPwd,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    children: [
                      Container(
                        height: height * 0.02,
                        width: width * 0.04,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border:
                                Border.all(color: Colors.black38, width: 1.5)),
                      ),
                      Text(
                        "   Remember me",
                        style: TextStyle(
                            color: Color(0xff1f2147),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.04),
                  Container(
                    alignment: Alignment.center,
                    height: height * 0.075,
                    width: width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff1f2147), Color(0xff4b1d5b)],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "forgot password?",
                        style: TextStyle(
                            color: Color(0xff1f2147),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "-----------------------------------",
                        style: TextStyle(
                            color: Color(0xff1f2147),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -2.5),
                      ),
                      Text(
                        " Or ",
                        style: TextStyle(
                            color: Color(0xff1f2147),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "-----------------------------------",
                        style: TextStyle(
                            color: Color(0xff1f2147),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -2.5),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.04),
                  Container(
                    height: height * 0.075,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Color(0xffe7b2c2)],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(
                          Icons.g_mobiledata_outlined,
                          size: 55,
                          color: Color(0xff1f2147),
                        ),
                        SizedBox(width: 25),
                        Text("Continue With Google",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff1f2147),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  Container(
                    height: height * 0.075,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Color(0xffe7b2c2)],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.facebook,
                            size: 40, color: Color(0xff1f2147)),
                        Text("Continue With Facebook",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff1f2147),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(height: 55),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/sign_up');
                        },
                        child: Text(
                          "Don't have an account? sign up",
                          style: TextStyle(
                              color: Color(0xff1f2147),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
