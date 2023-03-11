import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screen/categories/view/categories_screen_view.dart';
import 'controller/categories_screen_controller.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CategoriesScreenController(),
      builder: (_) => const CategoriesScreenView(),
    );
  }
}
