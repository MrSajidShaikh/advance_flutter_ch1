import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/photo_provider.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoProvider photoProvider = Provider.of<PhotoProvider>(context);
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index)=> ListTile(title: Text(photoProvider.photoList[index].title),)),
    );
  }
}
