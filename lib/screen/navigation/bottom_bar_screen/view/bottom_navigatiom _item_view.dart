import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/app/extension/widget_scale_extension.dart';

class BottomNavigationBarItems {
  final Key? btnKey;
  final String selectedIcon;
  final String unselectedIcon;
  final String label;
  final bool isSelected;

  const BottomNavigationBarItems(this.btnKey,
      {required this.selectedIcon,
      required this.unselectedIcon,
      required this.label,
      required this.isSelected});

  BottomNavigationBarItem bottomNavigationBarItemWidget() {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: SizedBox.square(
          dimension: 50.horizontalScale,
          child: SvgPicture.asset(
            isSelected ? selectedIcon : unselectedIcon,
            key: btnKey,
          ),
        ),
      ),
      label: label,
    );
  }
}
