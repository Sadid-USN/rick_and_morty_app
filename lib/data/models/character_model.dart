import 'dart:convert';

CharacterModel characterModelFromJson(String str) =>
    CharacterModel.fromJson(json.decode(str));

String characterModelToJson(CharacterModel data) => json.encode(data.toJson());

class CharacterModel {
  CharacterModel({
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
  });

  String name;
  String status;
  String species;
  String gender;
  String image;

  factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        name: json["name"],
        status: json["status"],
        species: json["species"],
        gender: json["gender"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "status": status,
        "species": species,
        "gender": gender,
        "image": image,
      };
}
