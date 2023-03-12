import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/extension/context_extensions.dart';
import '../../../app/components/message/error_message_dialog.dart';
import '../../../app/navigation/screens.dart';
import '../../../core/i10n/i10n.dart';
import '../../main/controller/main_controller.dart';
import '../../navigation/bottom_bar_screen/controller/bottom_bar_screen_controller.dart';

class SplashScreenController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext get context => scaffoldKey.currentContext!;

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  Future<void> _init() async {
    try {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
          statusBarBrightness: Brightness.light));

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);

      
      Get.put(MainController());
      Get.put(BottomNavigationBarController());
      final delay = Future.delayed(const Duration(seconds: 2));

      if (!await checkInternet()) return;

   
      delay.whenComplete(() => _navigateToHomeScreen());
    } catch (e) {
      tryAgainMessage(AppLocalization.getLabels.defaultError);
    }
  }

 

  

  Future<bool> checkInternet() async {
    if (await context.isInternetAvaible()) {
      return true;
    } else {
      ErrorMessageDialog.show(
          text: AppLocalization.getLabels.checkYourInternetConnection,
          barrierDismissible: false,
          buttonText: AppLocalization.getLabels.tryAgain,
          onTap: () {
            Navigator.pop(context);
            _init();
          });
    }
    return false;
  }


  _navigateToHomeScreen() {
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      Navigator.pushNamedAndRemoveUntil(
        context, Screens.instance.main.loginScreen, (route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
        context, Screens.instance.main.mainScreen, (route) => false);
    }
  });
    
  }


  /// Tekrar yükle popup
  tryAgainMessage(String message) {
    ErrorMessageDialog.show(
      text: message,
      barrierDismissible: false,
      buttonText: 'Tekrar Dene',
      onTap: () {
        Navigator.pop(scaffoldKey.currentContext!);
        _init();
      },
    );
  }
}
