import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/navigation/screens.dart';

class MainController extends GetxController {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<bool> onWillScope() async {
    String? currentPath;
    navigatorKey.currentState?.popUntil((route) {
      currentPath = route.settings.name;

      return true;
    });
    if (currentPath != Screens.instance.main.homeScreen) {
      navigatorKey.currentState!.maybePop();

      return false;
    } else {
      return true;
    }
  }
}
