import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screen/auth/login_screen/view/login_screen_view.dart';
import 'controller/login_screen_controller.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LoginScreenController(),
      builder: (_)=>const LoginScreenView(),
    );
  }
}