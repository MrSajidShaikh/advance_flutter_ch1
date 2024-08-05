import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class GalleryScreenProvider extends ChangeNotifier{
  final localAuth = LocalAuthentication();
  bool didAuthenticate = false;

  Future<void> authentication() async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await localAuth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      'device not supported';
    }
    try {
      didAuthenticate = await localAuth.authenticate(
        localizedReason: 'Please authenticate to access secure data',
      );
      didAuthenticate = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
