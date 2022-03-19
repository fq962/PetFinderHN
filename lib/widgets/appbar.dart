import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AppBarHeader extends StatelessWidget {
@override
  Widget build(BuildContext context) {
  return AppBar(
    title: const Text('PetFinder'),
    backgroundColor: const Color.fromRGBO(255, 179, 114, 1),
  );
}
}