import 'package:flutter/material.dart';

class AuthImage extends StatelessWidget {
  const AuthImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: _height * 0.13, bottom: _height * 0.05),
      height: _height * 0.15,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/clock.png'),
              fit: BoxFit.fitHeight)),
    );
  }
}
