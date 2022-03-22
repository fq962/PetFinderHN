import 'package:flutter/material.dart';

class AppBarHeader extends StatefulWidget {
  const AppBarHeader({Key? key}) : super(key: key);

  @override
  State<AppBarHeader> createState() => _AppBarHeaderState();
}

class _AppBarHeaderState extends State<AppBarHeader> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
          title: const Text('PetFinder'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 179, 114, 1),
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}));
  }
}