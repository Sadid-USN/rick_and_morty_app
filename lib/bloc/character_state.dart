enum Status {
  initial,
  loading,
  success,
  empty,
  error,
}

class CharacterCubitState {
  final Status status;
  final List characterList;
  final int currentPage;

  CharacterCubitState({
    this.status = Status.initial,
    required this.characterList,
    this.currentPage = 1,
  });
  CharacterCubitState copyWith({
    Status? status,
    List? characterList,
    int? currentPage,
  }) {
    return CharacterCubitState(
      status: status ?? this.status,
      characterList: characterList ?? this.characterList,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
