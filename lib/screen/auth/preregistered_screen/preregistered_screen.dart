import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screen/auth/preregistered_screen/view/preregistered_screen_view.dart';
import 'controller/preregistered_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PreregisteredController(),
      builder: (_) => const PreregisteredView(),
    );
  }
}
