import 'package:flutter/cupertino.dart';
import '../Screens/Stepper/stepper_example.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    // '/' : (context) => const ThemeChange(),
    '/' : (context) => const StepperExample(),
  };
}