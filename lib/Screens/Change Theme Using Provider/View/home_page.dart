import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/home_provider.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    ChangeThemeScreenProvider changeThemeScreenProviderTrue =
    Provider.of<ChangeThemeScreenProvider>(context, listen: true);
    ChangeThemeScreenProvider changeThemeScreenProviderFalse =
    Provider.of<ChangeThemeScreenProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: changeThemeScreenProviderTrue.isDark
                        ? Colors.white
                        : Colors.grey,
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    size: 30,
                    color: changeThemeScreenProviderTrue.isDark
                        ? Colors.white
                        : Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.035,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: height * 0.2,
                width: width * 0.6,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/avtar2.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Sahil',
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: height * 0.07,
              ),
              ListTile(
                leading: Icon(
                  changeThemeScreenProviderTrue.isDark
                      ? Icons.dark_mode
                      : Icons.light_mode,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeDataToDark.colorScheme.primary
                      : changeThemeDataToLight.colorScheme.primary,
                ),
                title: Text(
                  changeThemeScreenProviderTrue.isDark
                      ? 'Dark Mode'
                      : 'Light Mode',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Switch(
                  activeColor: Colors.yellow,
                  onChanged: (value) {
                    changeThemeScreenProviderFalse.themeChange();
                  },
                  value: changeThemeScreenProviderTrue.isDark,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                leading: Icon(
                  Icons.grid_4x4,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeDataToDark.colorScheme.onPrimary
                      :changeThemeDataToLight.colorScheme.onPrimary,
                ),
                title: const Text(
                  'Story',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeDataToDark.colorScheme.secondary
                      : changeThemeDataToLight.colorScheme.secondary,
                ),
                title: const Text(
                  'Settings and Privacy',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                leading: Icon(
                  Icons.message_outlined,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeDataToDark.colorScheme.onSecondary
                      : changeThemeDataToLight.colorScheme.onSecondary,
                ),
                title: const Text(
                  'Help Center',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  size: 35,
                  color: changeThemeScreenProviderTrue.isDark
                      ? changeThemeDataToDark.colorScheme.primary
                      : changeThemeDataToLight.colorScheme.primary,
                ),
                title: const Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
