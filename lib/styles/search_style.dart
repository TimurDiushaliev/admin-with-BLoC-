import 'package:flutter/material.dart';

class SearchStyle {
  static final searchStyle = InputDecoration(
      labelText: "Поиск...",
      // hintText: "Поиск...",
      prefixIcon: Icon(Icons.search),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0))));
}
