import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:grocery_app/app/navigation/page_navigation.dart';
import 'package:grocery_app/screen/auth/login_screen/login_screen.dart';
import 'package:grocery_app/screen/auth/otp_screen/otp_screen.dart';
import '../../screen/auth/register_screen/view/register_screen_view.dart';
import '../../screen/categories/categories_screen.dart';
import '../../screen/home/home_screen.dart';
import '../../screen/landing/splash_screen.dart';
import '../../screen/main/main_screen.dart';
import '../../screen/navigation/unknown_route_screen.dart';
import '../../screen/settings/settings_screen.dart';
import '../../screen/shopping_cart/shopping_cart_screen.dart';

class Screens with PageNavigation {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  static Screens? _screens;
  late final _MainScreens main;

  Screens._() {
    main = _MainScreens();
  }

  static Screens get instance {
    _screens ??= Screens._();
    return _screens!;
  }

  static BuildContext get context => _screens!.navigatorKey.currentContext!;

  restartApp() async {
    await Get.deleteAll();
    navigatorKey.currentState!
        .pushNamedAndRemoveUntil(main.init, (route) => false);
  }
}

class _MainScreens with PageNavigation {
  final String init = "/";
  final String mainScreen = "mainScreen";
  final String homeScreen = "home_screen";
  final String shoppingScreen = "shopping_screen";
  final String categoriesScreen = "categories_screen";
  final String settingsScreen = "settings_screen";
  final String loginScreen = "login_screen";
  final String registerScreen = "register_screen";
  final String otpScreen = "otp_screen";

  Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    if (setting.name == init) {
      return goToPage(const SplashScreen(), setting);
    } else if (setting.name == mainScreen) {
      return goToPage(const MainScreen(), setting);
    } else if (setting.name == homeScreen) {
      return goToPage(const HomeScreen(), setting);
    } else if (setting.name == loginScreen) {
      return goToPage(const LoginScreen(), setting);
    } else if (setting.name == registerScreen) {
      return goToPage(const RegisterScreenView(), setting);
    } else if (setting.name == homeScreen) {
      return goToPage(const HomeScreen(), setting);
    } else if (setting.name == otpScreen) {
      return goToPage(const OtpScreen(), setting);
    } else {
      return goToPage(
        const UnknownRouteScreen(),
        setting,
      );
    }
  }

  final bottomNavigationBarScreens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const ShoppingCartScreen(),
    const SettingsScreen(),
    // if (kDebugMode) const AllComponentsScreen()
  ];
}
