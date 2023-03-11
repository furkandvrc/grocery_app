import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/constants/app/app_constants.dart';
import '../../../app/constants/app/padding_and_radius_size.dart';
import '../../../app/theme/text_style.dart';
import '../../../app/components/background/glass_morphic_container.dart';
import '../components/widgets/location_icon.dart';
import '../components/widgets/location_texts.dart';
import '../components/widgets/search_box.dart';
import '../controller/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(),
      body: GlassMorphicContainer(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: paddingXXS),
                child: Row(children: [
                  Text(
                    appName,
                    style: s20W900(),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_outlined))
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: paddingXS, bottom: paddingS),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const LocationIcon(),
                    const LocationTexts(),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              const SearchBox(),
              Column(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
