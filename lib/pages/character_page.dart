import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/character_bloc.dart';
import 'package:rick_and_morty/data/repository/character_repo.dart';
import 'package:rick_and_morty/pages/search_page.dart';

class CharacterPage extends StatelessWidget {
  CharacterPage({Key? key, required this.title}) : super(key: key);

  final String title;
  final repository = CharacterRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: repository),
        child: Container(
          decoration: const BoxDecoration(color: Colors.black45),
          child: const SearchPage(),
        ),
      ),
    );
  }
}
