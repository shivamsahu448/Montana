import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:montana/appcolor/theme.dart';
import 'package:montana/page/otp_verification.dart';

class login_1 extends StatefulWidget {
  const login_1({super.key});

  @override
  State<login_1> createState() => _login_1State();
}

class _login_1State extends State<login_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Apptheme.Backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 350,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                          height: 300,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          "assets/imgLogin.png")),
                  Positioned(
                      right: 45,
                      top: 40,
                      child: Container(
                        height: 40,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white.withOpacity(0.5)),
                        child: Center(
                            child: Text(
                          "Skip",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white),
                        )),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/Frame 7.png"))),
                      ))
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                        "Get access to your booking, wishlists, deals and offers",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                    child: Card(
                      margin: EdgeInsets.zero,
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      child: TextFormField(
                        cursorColor: Apptheme.ButtonColor,
                        decoration: InputDecoration(
                            hintText: 'Enter mobile Number',
                            hintStyle:
                                TextStyle(color: Colors.black, fontSize: 14),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.mobile_screen_share,
                              color: Colors.grey,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => otp_verification(),
                            ));
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red),
                        child: Center(
                            child: Text(
                          "Request WhatsApp OTP",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text:
                                  "By continuing, you agree to our  and Privacy Policy.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                          TextSpan(
                              text: "Terms of Use",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 12)),
                          TextSpan(
                              text: "  and ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                          TextSpan(
                              text: "Privacy Policy.",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 12))
                        ])),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
