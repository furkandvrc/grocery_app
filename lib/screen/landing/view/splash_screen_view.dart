import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/constants/assets/assets.dart';
import '../../../app/constants/app/padding_and_radius_size.dart';
import '../../../app/components/background/glass_morphic_container.dart';
import '../controller/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      key: controller.scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GlassMorphicContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingXXXL),
          child: Center(child: SvgPicture.asset(splash)),
        ),
      ),
    );
  }
}
