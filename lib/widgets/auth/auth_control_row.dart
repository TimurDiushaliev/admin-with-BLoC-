import 'package:flutter/material.dart';

class AuthControlRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: _height * 0.002,
          width: _width * 0.3,
          child: Container(
            color: Colors.black,
          ),
        ),
        Text(
          'Контроль',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
          height: _height * 0.002,
          width: _width * 0.3,
          child: Container(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
