import 'package:admin/services/administration/image_provider.dart';
import 'package:flutter/material.dart';

class TakeImage extends StatelessWidget {
  final imageProvider = MyImageProvider();
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    return Container(
      height: _height*0.3,
      child: imageProvider.checkImage(),
    );
  }
}
