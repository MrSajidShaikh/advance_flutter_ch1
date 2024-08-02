import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List data = [
  {
    'img': 'assets/girl.png',
    'text1': 'Brows',
    'text2': 'App',
    'text3': 'and Order Now',
    'text4': 'We have many recipes for you',
    'text5': 'Go and select food what you want',
  },
  {
    'img': 'assets/hakkaNoddle.jpg',
    'text1': 'Best',
    'text2': 'Delicious',
    'text3': 'Food in our Area',
    'text4': 'We provide best food to our',
    'text5': 'customer healthy and organic',
  },
  {
    'img': 'assets/chicken.jpg',
    'text1': 'We Provide',
    'text2': 'Fast',
    'text3': 'Food service',
    'text4': 'We provide organic food service',
    'text5': 'our customer from anywhere',
  },
];

Column introScreen(
    double height,
    double width,
    String img,
    String text1,
    String text2,
    String text3,
    String text4,
    String text5,
    context,
    onTap,
    color1,
    color2,
    color3,
    submit,
    ) {
  return Column(
    children: [
      SizedBox(
        height: height * 0.09,
      ),
      SizedBox(
        height: height * 0.3,
        width: height * 0.3,
        child: Image.asset(
          img,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: height * 0.04,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$text1 ',
            style: const TextStyle(
              color: Colors.amber,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      Text(
        text3,
        style: const TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: height * 0.03,
      ),
      Text(
        text4,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        text5,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: height * 0.05,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          screenPass(height, width, color1),
          screenPass(height, width, color2),
          screenPass(height, width, color3),
        ],
      ),
      SizedBox(
        height: height * 0.06,
      ),
      GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: height * 0.05,
          width: width * 0.5,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            submit,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}

Container screenPass(double height, double width, Color color) {
  return Container(
    height: height * 0.01,
    width: width * 0.07,
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}