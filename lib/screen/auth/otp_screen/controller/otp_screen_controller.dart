import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screen/auth/login_screen/view/login_screen_view.dart';

class OtpScreenController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext get context => scaffoldKey.currentContext!;
  late String smsCode;
  late String phoneNumber =
      Get.put(const LoginScreenView().controller.textEditing.text);
}
