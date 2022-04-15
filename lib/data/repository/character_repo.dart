import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty/data/models/character_model.dart';

class CharacterRepo {
  final url = "https://rickandmortyapi.com/api/character";
  Future<CharacterModel> getCharacter(int page, String name) async {
    try {
      var response = await http.get(Uri.parse(url + '?page=$page&name=$name'));

      var jsonResult = json.decode(response.body);
      return CharacterModel.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
