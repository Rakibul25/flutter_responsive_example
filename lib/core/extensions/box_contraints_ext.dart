import 'package:flutter/widgets.dart';
import '../enums/device_screen_type.dart';
import '../constants/app_breakpoints.dart';

extension DeviceScreenTypeExtension on BoxConstraints {
  DeviceScreenType get screenType {
    final width = maxWidth;
    if (width >= AppBreakpoints.desktop) return DeviceScreenType.desktop;
    if (width >= AppBreakpoints.tablet) return DeviceScreenType.tablet;
    return DeviceScreenType.mobile;
  }
}