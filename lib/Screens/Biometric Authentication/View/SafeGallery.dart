import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Modal/List_of_photos.dart';

class Safegallery extends StatelessWidget {
  const Safegallery({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading:  Icon(Icons.arrow_back,color: Colors.white,),
        title: Text(
          'Recent',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Photos',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(
                        'Select',
                        style: TextStyle(
                            color: CupertinoColors.activeBlue,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),

                    ],
                  ),
                  Wrap(
                    children: [
                      ...List.generate(
                          safeGallery.length,
                              (index) => Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              height: height * 0.09,
                              width: width * 0.16,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(safeGallery[index]),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
