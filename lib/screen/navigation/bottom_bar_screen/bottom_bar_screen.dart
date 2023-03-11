import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/constants/app/padding_and_radius_size.dart';
import 'package:grocery_app/app/extension/widget_scale_extension.dart';
import '../../../app/theme/colors.dart';
import '../../../app/theme/text_style.dart';
import 'controller/bottom_bar_screen_controller.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final Function(int) onTap;
  const AppBottomNavigationBar({Key? key, required this.onTap})
      : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        return;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavigationBarCont = Get.find<BottomNavigationBarController>();

    return Obx(
      () => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(radiusXL),
                topLeft: Radius.circular(radiusXL)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              enableFeedback: true,
              selectedFontSize: 12.horizontalScale,
              unselectedFontSize: 12.horizontalScale,
              backgroundColor: AppColor.background,
              //Index
              currentIndex: bottomNavigationBarCont.selectedIndex,
              onTap: (int value) => widget.onTap.call(value),

              ///Label
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedLabelStyle: s12W700().copyWith(fontSize: 12),
              unselectedLabelStyle: s12W500().copyWith(fontSize: 12),

              ///Item
              unselectedItemColor: AppColor.secondary,
              selectedItemColor: AppColor.secondary,
              items: bottomNavigationBarCont.bottomNavigationBarItems(context),
            ),
          ),
        ],
      ),
    );
  }
}
