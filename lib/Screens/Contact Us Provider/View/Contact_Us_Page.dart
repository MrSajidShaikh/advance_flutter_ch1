import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../Provider/Contact _Us_Provider.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactProvider contactProvider =
        Provider.of<ContactProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          title: const Text(
            'Contact Us',
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'If you have any queries, get in touch with us. We will be happy to help you!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 21,
              ),
              GestureDetector(
                  onTap: () {
                    contactProvider.launchPhoneNumber();
                  },
                  child: buildContainer(
                      Icons.phone_android_rounded, '+91 9316555468')),
              const SizedBox(
                height: 21,
              ),
              GestureDetector(
                  onTap: () {
                    contactProvider.launchSMS();
                  },
                  child: buildContainer(Icons.message, '+91 9316555468')),
              const SizedBox(
                height: 21,
              ),
              GestureDetector(
                  onTap: () {
                    contactProvider.launchMail();
                  },
                  child: buildContainer(Icons.mail_outline_rounded,
                      'sajidshaikh12543@gmail.com')),
              const SizedBox(
                height: 34,
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 2,
                        color: Colors.blue.shade200.withOpacity(0.45)),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 19),
                        child: Text('Social Media',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 23.8,
                                fontWeight: FontWeight.bold)),
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.blue.shade200.withOpacity(0.38),
                      ),
                      GestureDetector(
                        onTap: () {
                          contactProvider.launchGithub();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(14),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              FaIcon(
                                FontAwesomeIcons.github,
                                size: 45,
                              ),
                              SizedBox(width: 34),
                              Text(
                                'Github',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                        color: Colors.blue.shade200.withOpacity(0.38),
                      ),
                      GestureDetector(
                        onTap: () {
                          contactProvider.launchLinkdin();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(14),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              FaIcon(
                                FontAwesomeIcons.linkedin,
                                size: 45,
                              ),
                              SizedBox(width: 34),
                              Text(
                                ' Linkdin',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(var icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border:
            Border.all(width: 2, color: Colors.blue.shade200.withOpacity(0.45)),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          Icon(
            icon,
            color: Colors.blue,
            size: 42,
          ),
          const SizedBox(width: 34),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
