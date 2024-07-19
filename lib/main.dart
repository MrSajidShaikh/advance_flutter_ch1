import 'package:advance_flutter_ch1/Screens/Contact%20Us%20Provider/Provider/Contact%20_Us_Provider.dart';
import 'package:advance_flutter_ch1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Biometric Authentication/Provider/Biometric_Provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ContactProvider(),
  builder: (context, child) => const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}