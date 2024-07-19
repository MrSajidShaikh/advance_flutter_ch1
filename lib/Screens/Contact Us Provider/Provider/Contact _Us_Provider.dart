import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactProvider extends ChangeNotifier {
  void launchPhoneNumber() {
    Uri url = Uri.parse('tel: +91 9316555468');
    launchUrl(url);
  }

  void launchSMS() {
    Uri url = Uri.parse('sms: +91 9316555468');
    launchUrl(url);
  }

  void launchMail() {
    Uri url = Uri.parse('mailto: sajidshaikh12543@@gmail.com');
    launchUrl(url);
  }

  void launchGithub() {
    Uri url = Uri.parse('https://github.com/MrSajidShaikh');
    launchUrl(url, mode: LaunchMode.inAppWebView);
  }

  void launchLinkdin() {
    Uri url = Uri.parse('https://www.linkedin.com/in/sajid-shaikh-011036234/');
    launchUrl(url);
  }
}
