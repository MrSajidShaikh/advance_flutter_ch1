import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Lec - 1.5/Provider/change_theme_screen_provider.dart';
import 'Screens/Lec - 1.7/Provider/Biometric_provider.dart';
import 'Screens/Lec - 1.7/View/GallaryView.dart';

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
        // ChangeNotifierProvider(
        //   create: (context) => IntroScreenProvider(isHomed),
        // ),
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