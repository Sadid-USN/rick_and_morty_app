import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/character_bloc.dart';
import 'package:rick_and_morty/bloc/character_state.dart';
import 'package:rick_and_morty/data/models/character_model.dart';
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
        create: (context) => CharacterCubit()..getCharacters(),
        child: BlocBuilder<CharacterCubit, CharacterCubitState>(
            builder: (context, state) {
          print(state.characterList);
          print(state.currentPage);
          print(state.status);
          if (state.status == Status.loadisng ||
              state.status == Status.initial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == Status.success) {
            return ListView.builder(
              itemCount: state.characterList.length + 1,
              itemBuilder: (context, index) {
                if (index == state.characterList.length) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  CharacterModel item = state.characterList[index];
                  return ListTile(
                    leading: Container(
                      child: Image.network(item.image),
                    ),
                    title: Text(item.name),
                  );
                }
              },
            );
          } else if (state.status == Status.empty) {
            print(6666);
            return ListView.builder(
              itemCount: state.characterList.length,
              itemBuilder: (context, index) {
                CharacterModel item = state.characterList[index];
                return ListTile(
                  leading: Container(
                    child: Image.network(item.image),
                  ),
                  title: Text(item.name),
                );
              },
            );
          } else {
            return Text('Oups');
          }
        }),
      ),
    );
  }
}
