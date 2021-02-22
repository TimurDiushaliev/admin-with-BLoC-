import 'package:flutter/material.dart';

class AdminStyle {
  final userLastName = InputDecoration(
    labelText: 'Введите фамилию:',
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue[700]),
        borderRadius: BorderRadius.all(Radius.circular(25))),
  );
  final userFirstName = InputDecoration(
    labelText: 'Введите имя:',
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue[700]),
        borderRadius: BorderRadius.all(Radius.circular(25))),
  );
  final userPosition = InputDecoration(
    labelText: 'Введите должность:',
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue[700]),
        borderRadius: BorderRadius.all(Radius.circular(25))),
  );
}