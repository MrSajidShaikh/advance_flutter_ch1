import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

import '../View/SafeGallery.dart';

class GalleryProvider extends ChangeNotifier{

  final LocalAuthentication auth = LocalAuthentication();
  bool password = false;

  Future<void> localUserAuthentication(BuildContext context) async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {}
    try {
      final didAuthenticate = await auth.authenticate(
        localizedReason: 'Verify with Fingerprint',
      );
      password = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {}

    if (password) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Safegallery(),
      ));
    } else {
    }
  }


}
