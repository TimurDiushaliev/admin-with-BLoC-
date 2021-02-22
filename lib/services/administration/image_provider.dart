import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImageProvider {
  File image;
  final picker = ImagePicker();
  Widget checkImage() {
    if (image != null) {
      return Image.file(image);
    } else {
      return Image.network('https://www.escj.org/sites/default/files/default_images/noImageUploaded.png');
    }
  }

  void getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      print('no image selected');
    }
  }
}
