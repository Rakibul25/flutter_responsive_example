import 'package:flutter/material.dart';
import 'package:flutter_responsive_example/core/extensions/box_contraints_ext.dart';
import '../enums/device_screen_type.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext, DeviceScreenType) builder;

  const ResponsiveBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenType = constraints.screenType;
        return builder(context, screenType);
      },
    );
  }
}