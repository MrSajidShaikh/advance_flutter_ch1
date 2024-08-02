// import 'package:advance_flutter_ch1/Screens/Contact%20Us%20Provider/Provider/Contact%20_Us_Provider.dart';
// import 'package:advance_flutter_ch1/utils/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'Screens/Biometric Authentication/Provider/Biometric_Provider.dart';
// import 'Screens/Change Theme Using Provider/Provider/home_provider.dart';
// import 'Screens/Change Theme Using Provider/View/home_page.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => ContactProvider(),
//       builder: (context, child) =>  MaterialApp(
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: Provider.of<ChangeThemeProvider>(context).isLight
//           ? ThemeMode.dark
//           : ThemeMode.light,
//       debugShowCheckedModeBanner: false,
//       // routes: AppRoutes.routes,
//         home: const HomePage(),
//       ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/Biometric Authentication/Provider/Biometric_provider.dart';
import 'Screens/Biometric Authentication/View/GallaryView.dart';
import 'Screens/Change Theme Using Provider/Provider/home_provider.dart';
import 'Screens/One Time Intro Screen/Provider/introScreenprovider.dart';

bool theme = false;
bool isHomed = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  theme = sharedPreferences.getBool('theme') ?? false;
  isHomed = sharedPreferences.getBool('home') ?? false;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChangeThemeScreenProvider(theme),
        ),
        ChangeNotifierProvider(
          create: (context) => IntroScreenProvider(isHomed),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => LauncherProvider(),
        // ),
        ChangeNotifierProvider(
          create: (context) => GalleryScreenProvider(),
        ),
      ],
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ChangeThemeScreenProvider changeThemeScreenProviderTrue =
        Provider.of<ChangeThemeScreenProvider>(context, listen: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GalleryScreen1(),
      theme: changeThemeDataToLight,
      darkTheme: changeThemeDataToDark,
      themeMode: changeThemeScreenProviderTrue.isDark
          ? ThemeMode.dark
          : ThemeMode.light,
    );
  }
}
