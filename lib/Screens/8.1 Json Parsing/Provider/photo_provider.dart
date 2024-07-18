
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/photo_modal.dart';

class PhotoProvider extends ChangeNotifier
{
  List<Photo> photoList = [];

  Future<List> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/photo.json');
    List photo = jsonDecode(json);

    return photo;
  }

  Future<void> FromList()
  async {
    List photo = await jsonParsing();
    photoList = photo.map((e)=>Photo.fromMap(e),).toList();
    notifyListeners();
  }

}
