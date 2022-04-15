import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character_model.dart';
import 'package:rick_and_morty/data/repository/character_repo.dart';

import '../data/models/character_model.dart';
//part 'character_bloc.g.dart';
part 'character_bloc.freezed.dart';
part 'character_event.dart';

part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepo characterRepo;

  CharacterBloc({required this.characterRepo})
      : super(const CharacterState.loading()) {
    on<CharacterEventFetch>(((event, emit) async {
      emit(const CharacterState.loading());
      try {
        CharacterModel? _characterModelLoaded =
            await characterRepo.getCharacter(event.page, event.name);
        emit(
          CharacterState.loaded(characterModelLoaded: _characterModelLoaded),
        );
      } catch (_) {
        emit(const CharacterState.error());
      }
    }));
  }
}
