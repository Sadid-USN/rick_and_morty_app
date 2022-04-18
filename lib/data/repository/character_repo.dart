import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_and_morty/data/models/character_model.dart';

class CharacterRepo {
  final url = "https://rickandmortyapi.com/api/character";
  Future<CharacterModel> getCharacter(String name) async {
    http.Response response = await http.get(Uri.parse(url + '?name=$name'));
    return characterModelFromJson(response.body);
  }

  Future getCharacters(int page) async {
    http.Response response = await http.get(Uri.parse(url + '?page=$page'));
    return json.decode(response.body);
  }
}
