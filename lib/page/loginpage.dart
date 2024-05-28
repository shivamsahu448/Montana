import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:montana/appcolor/theme.dart';
import 'package:montana/controller/login_controller.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final code = TextEditingController() ;
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Container(
          width: double.infinity,
          height: 50,
          decoration: const BoxDecoration(color: Colors.cyan),
          child: const Center(
              child: Text(
            'Montana',
            style: TextStyle(color: Color.fromARGB(221, 249, 245, 245)),
          )),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   radius: 80,
              //   backgroundImage: SvgPicture.asset("assets/logo.svg"),
              // ),
              SvgPicture.asset(
                "assets/logo.svg",
                height: 80,
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: code,
                decoration: InputDecoration(
                  hintText: ' code',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 1, color: Apptheme.basicappcolor)),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 0.5, color: Color.fromARGB(255, 61, 62, 62))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: pass,
                decoration: InputDecoration(
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 83, 190, 235))),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          width: 0.5, color: Color.fromARGB(255, 61, 62, 62))),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {},
                    //  Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => enterMobileNum(),
                    //     )),
                    child: Text(
                      'Forget Password ?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(221, 248, 91, 91),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.put(LoginController()).fetchlogin(code.text.toString(), pass.text.toString());
                  },
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => MyHomePage(),
                  //     )),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.cyan)))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: InkWell(
              onTap: () {},
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => register(),
              //     )),
              child: Text(
                "New User? Sing UP",
                style: TextStyle(
                    color: Color.fromARGB(221, 248, 91, 91),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
