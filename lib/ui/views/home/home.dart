import 'package:flutter/material.dart';

import '../../../core/enums/device_screen_type.dart';
import '../../../core/responsive/responsive_builder.dart';
import 'home_desktop.dart';
import 'home_mobile.dart';
import 'home_tablet.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(
      builder: (context, screenType) {
        switch (screenType) {
          case DeviceScreenType.tablet:
            return const HomeTablet();
          case DeviceScreenType.desktop:
            return const HomeDesktop();
          default:
            return const HomeMobile();
        }
      },
    );
  }
}
