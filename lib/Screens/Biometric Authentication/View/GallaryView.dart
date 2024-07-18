import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Modal/List_of_photos.dart';
import '../Provider/Biometric_Provider.dart';

class BiometricPage extends StatelessWidget {
  const BiometricPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    GalleryProvider bioprovider =
        Provider.of<GalleryProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          'Gallery',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          Column(
            children: [
              Row(
                children: [
                  const Text(
                    '      Albums',
                    style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  const Icon(
                    Icons.arrow_drop_down_outlined,
                    color: CupertinoColors.activeBlue,
                  ),
                  SizedBox(
                    width: width * 0.5,
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  PopupMenuButton<int>(
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                    onSelected: (value) {
                      switch (value) {
                        case 1:
                          bioprovider.localUserAuthentication(context);
                          break;
                        case 2:
                          break;
                        case 3:
                          break;
                      }
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: ListTile(
                          title: Text('Hidden Folder',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: ListTile(
                          title: Text('Recently deleted',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: ListTile(
                          title: Text('Setting',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                    color: Colors.black,
                  ),
                ],
              ),
              Wrap(
                children: [
                  ...List.generate(
                      gallery.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: height * 0.12,
                                  width: width * 0.25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage(gallery[index]['photo']),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Text(
                                  gallery[index]['name'],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  gallery[index]['no'],
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
