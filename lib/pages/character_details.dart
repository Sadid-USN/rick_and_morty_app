import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/character_bloc.dart';
import '../bloc/character_state.dart';
import '../data/models/character_model.dart';

class CharacterDetails extends StatelessWidget {
  final CharacterModel item;
  const CharacterDetails({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Details'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocBuilder<CharacterCubit, CharacterCubitState>(
          builder: (context, state) {
        return ListView.builder(
            itemCount: state.characterList.length,
            itemBuilder: (context, index) {
              if (index == state.characterList.length) {
                if (state.status == Status.success) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              } else {
                CharacterModel item = state.characterList[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                          color: Colors.black45,
                        ),
                        child: Text(item.id.toString()),
                      )
                    ],
                  ),
                );
              }
            });
      }),
    );
  }
}
