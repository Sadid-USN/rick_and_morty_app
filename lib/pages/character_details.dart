import 'package:flutter/material.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Details'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
