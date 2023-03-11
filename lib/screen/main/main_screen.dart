import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screen/main/controller/main_controller.dart';
import 'package:grocery_app/screen/navigation/bottom_bar_screen/bottom_bar_screen.dart';
import '../../app/navigation/screens.dart';
import '../../app/navigation/size_config.dart';
import '../navigation/bottom_bar_screen/controller/bottom_bar_screen_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return GetBuilder<MainController>(
      init: MainController(),
      autoRemove: false,
      builder: (controller) => WillPopScope(
        onWillPop: controller.onWillScope,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: GetX<BottomNavigationBarController>(
              builder: (bottomNavigationBarController) {
            return Scaffold(
              extendBody: true,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              body: PageTransitionSwitcher(
                transitionBuilder: (
                  Widget child,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                ) {
                  return FadeThroughTransition(
                    animation: animation,
                    secondaryAnimation: secondaryAnimation,
                    child: child,
                  );
                },
                child: Screens.instance.main.bottomNavigationBarScreens[
                    bottomNavigationBarController.selectedIndex],
              ),
              bottomNavigationBar: AppBottomNavigationBar(
                onTap: (int value) => setState(
                    () => bottomNavigationBarController.selectedIndex = value),
              ),
            );
          }),
        ),
      ),
    );
  }
}
