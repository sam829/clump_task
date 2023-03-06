import 'dart:convert';

import 'package:clump_task/network/network_manager.dart';
import 'package:clump_task/network/requests/log_in_request.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LogInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final networkManager = NetworkManager();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? validateEmail(String? email) {
    if (email?.isEmpty == true) {
      return 'Email cannot be empty';
    } else if (email?.isEmail == false) {
      return 'Email is not valid';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password?.isEmpty == true) {
      return 'Password cannot be empty';
    }
    return null;
  }

  logIn(Function contextRelatedBody) async {
    if (formKey.currentState?.validate() == true) {
      contextRelatedBody();
      _makeLogInNetworkCall();
    }
  }

  _makeLogInNetworkCall() async {
    try {
      final response = await networkManager.logIn(LogInRequest(
        emailOrMobile: emailController.text,
        password: passwordController.text,
      ));

      if (response.statusCode == 200) {
        //TODO success
        debugPrint("LogInResponse::${jsonDecode(response.body)}");
      } else {
        //TODO: error
        debugPrint("LogInResponse::${response.body}");
        debugPrint("LogInResponse::${response.statusCode}");
      }
    } catch (e) {
// TODO: error
      debugPrint("LogInResponse::$e");
    }
  }
}
