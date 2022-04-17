import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/character_state.dart';
import 'package:rick_and_morty/data/models/character_model.dart';
import 'package:rick_and_morty/data/repository/character_repo.dart';

class CharacterCubit extends Cubit<CharacterCubitState> {
  CharacterCubit()
      : super(CharacterCubitState(
          status: Status.initial,
          characterList: [],
        ));

  CharacterRepo characterRepo = CharacterRepo();
  Future<void> getCharacters() async {
    emit(state.copyWith(status: Status.loadisng));
    try {
      print(state.currentPage);
      if (state.currentPage != null) {
        var data = await characterRepo.getCharacters(
          state.currentPage as int,
        );
        List lst = [];
        for (var i in data['results']) {
          CharacterModel model = CharacterModel(
            name: i['name'],
            gender: i['gender'],
            status: i['status'],
            species: i['species'],
            image: i['image'],
          );
          lst.add(model);
        }

        emit(state.copyWith(
          status: Status.success,
          characterList: state.characterList + lst,
        ));
      }
    } catch (_) {
      emit(
        state.copyWith(
          status: Status.error,
        ),
      );
    }
  }
}
