import 'dart:convert';

import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  Future<void> fetchlogin(String code, String pass) async {
    var validuser = await http.post(
        Uri.parse(
            "http://43.225.52.33/~facultypedia/pure_professional/rider_server/rider_app/API/api/cust_login_new"),
        body: {'mobile_number': code, 'password': pass});
    if (validuser.statusCode == 200) {
      var responce = jsonDecode(validuser.body);
      if (responce['response']['status'] == true) {
        print("sucess");
        Get.snackbar("succes", "Welcome to dashbord");
        // nevigare next pgae code
      } else {
        Get.snackbar("false", "please enter valid id");
      }
    }
  }
}
