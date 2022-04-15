import 'package:flutter/material.dart';

class HeroesPage extends StatelessWidget {
  const HeroesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heroes Page'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
