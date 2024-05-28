import 'package:flutter/material.dart';
import 'package:montana/appcolor/theme.dart';
import 'package:montana/page/login_1.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/map.png"))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text("Sanhita Township",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
          ),
          Text("Newtown, Kolkata - 700135",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => login_1(),
                    ));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Apptheme.ButtonColor),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.gps_fixed,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Text(
                        "Auto location",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Card(
              margin: EdgeInsets.zero,
              color: Colors.white,
              surfaceTintColor: Colors.white,
              child: TextFormField(
                cursorColor: Apptheme.ButtonColor,
                decoration: InputDecoration(
                    hintText: 'Search Other Location',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
