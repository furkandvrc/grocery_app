import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screen/shopping_cart/view/shopping_cart__screen_view.dart';

import 'controller/shopping_cart_screen_controller.dart';



class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ShopingCartScreenController(),
      builder: (_) => const ShoppingCartScreenView(),
    );
  }
}
