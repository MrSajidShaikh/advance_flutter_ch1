import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactProvider extends ChangeNotifier {
  void launchPhoneNumber() {
    Uri url = Uri.parse('tel: +91 9328871876');
    launchUrl(url);
  }

  void launchSMS() {
    Uri url = Uri.parse('sms: +91 9328871876');
    launchUrl(url);
  }

  void launchMail() {
    Uri url = Uri.parse('mailto: ankitumredkar77@gmail.com');
    launchUrl(url);
  }

  void launchGithub() {
    Uri url = Uri.parse('https://github.com/AnkitUmredkar');
    launchUrl(url, mode: LaunchMode.inAppWebView);
  }

  void launchLinkdin() {
    Uri url = Uri.parse('https://linkedin.com/in/ankit-umredkar-a99549289/');
    launchUrl(url);
  }
}
