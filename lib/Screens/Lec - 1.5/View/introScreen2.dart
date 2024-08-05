import 'package:flutter/material.dart';

import '../Modal/modal.dart';
import 'introScreen3.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              introScreen(
                height,
                width,
                data[1]['img'],
                data[1]['text1'],
                data[1]['text2'],
                data[1]['text3'],
                data[1]['text4'],
                data[1]['text5'],
                context,
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroScreen3(),
                    ),
                  );
                },
                Colors.grey,
                Colors.amber,
                Colors.grey,
                'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
