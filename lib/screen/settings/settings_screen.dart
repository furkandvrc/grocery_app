import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screen/settings/controller/settings_screen_controller.dart';
import 'package:grocery_app/screen/settings/view/settings_screen_view.dart';



class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SettingsScreensController(),
      builder: (_) => const SettingsScreenView(),
    );
  }
}
