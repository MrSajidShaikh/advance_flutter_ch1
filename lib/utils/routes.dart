import 'package:advance_flutter_ch1/Switch%20dark%20theme%20to%20light%20theme/theme_change.dart';
import 'package:flutter/cupertino.dart';
import '../Stepper/stepper_example.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/' : (context) => const ThemeChange(),
    '/' : (context) => const StepperExample(),
  };
}
