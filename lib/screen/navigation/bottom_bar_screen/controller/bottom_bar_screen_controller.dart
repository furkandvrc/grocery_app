import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/constants/assets/assets.dart';
import '../view/bottom_navigatiom _item_view.dart';

class BottomNavigationBarController extends GetxController {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final RxInt _selectedIndex = 0.obs;

  ///BottomNavigationBar için kullanılan index
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(int value) {
    if (_selectedIndex.value != value) _selectedIndex.value = value;
  }

  List<BottomNavigationBarItem> bottomNavigationBarItems(BuildContext context) {
    return [
      BottomNavigationBarItems(
        const Key('bottomHomeKey'),
        label: 'Ana Sayfa',
        isSelected: selectedIndex == 0 ? true : false,
        selectedIcon: homeIconFilled,
        unselectedIcon: homeIconLine,
      ).bottomNavigationBarItemWidget(),
      BottomNavigationBarItems(
        const Key('bottomCategoriesKey'),
        label: 'Kategoriler',
        isSelected: selectedIndex == 1 ? true : false,
        selectedIcon: categoriesIconFilled,
        unselectedIcon: categoriesIconLine,
      ).bottomNavigationBarItemWidget(),
      BottomNavigationBarItems(
        const Key('bottomShoppingCartKey'),
        label: 'Sepet',
        selectedIcon: shoppingCartIconFilled,
        unselectedIcon: shoppingCartIconLine,
        isSelected: selectedIndex == 2 ? true : false,
      ).bottomNavigationBarItemWidget(),
      BottomNavigationBarItems(
        const Key('bottomSettingsKey'),
        label: 'Ayarlar',
        unselectedIcon: settingsIconLine,
        selectedIcon: settingsIconFilled,
        isSelected: selectedIndex == 3 ? true : false,
      ).bottomNavigationBarItemWidget()
    ];
  }
}
