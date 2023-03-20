import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screen/auth/otp_screen/view/otp_screen_view.dart';
import 'controller/otp_screen_controller.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OtpScreenController(),
      builder: (_) => const OtpScreenView(),
    );
  }
}
