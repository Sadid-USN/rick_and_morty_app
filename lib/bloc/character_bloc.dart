import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/character_state.dart';
import 'package:rick_and_morty/data/models/character_model.dart';
import 'package:rick_and_morty/data/repository/character_repo.dart';

class CharacterCubit extends Cubit<CharacterCubitState> {
  var flag = true;
  CharacterCubit()
      : super(CharacterCubitState(
          status: Status.initial,
          characterList: [],
        ));

  CharacterRepo characterRepo = CharacterRepo();
  Future<void> getCharacters() async {
    if (flag) {
      print(state.currentPage);
      if (state.currentPage == 1) {
        emit(state.copyWith(status: Status.loading));
      }
      try {
        if (state.currentPage != null) {
          var data = await characterRepo.getCharacters(
            state.currentPage,
          );
          print(data['info']['next']);
          var page = data['info']['next'];
          List lst = [];
          for (var i in data['results']) {
            CharacterModel model = CharacterModel(
                name: i['name'],
                gender: i['gender'],
                status: i['status'],
                species: i['species'],
                image: i['image'],
                id: i['id']);
            lst.add(model);
          }
          if (page == null) {
            flag = false;
            emit(state.copyWith(
              status: Status.empty,
              currentPage: null,
              characterList: state.characterList + lst,
            ));
          } else {
            print(int.parse(page.split('=')[1]));
            print('111');
            print(page);
            print('222');
            print(page.split('='));
            print('333');
            print(page.split('=')[0]);
            print('444');
            print(page.split('=')[1]);
            emit(state.copyWith(
              status: Status.success,
              characterList: state.characterList + lst,
              currentPage: int.parse(page.split('=')[1]),
            ));
          }
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
}
