import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/components/background/glass_morphic_container.dart';
import 'package:grocery_app/app/constants/assets/assets.dart';
import 'package:grocery_app/screen/auth/login_screen/controller/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlassMorphicContainer(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [SvgPicture.asset(loginScreenBg)],
        ),
      )),
    );
  }
}
