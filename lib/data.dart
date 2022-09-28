// ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages
class datta {
  int? id;
  late String name;
  late int score;

  datta({
    this.id,
    required this.name,
    required this.score,
  });

  datta.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    score = json["value"];
  }
}
