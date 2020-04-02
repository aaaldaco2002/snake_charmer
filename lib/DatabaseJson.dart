import 'dart::convert';
import 'package::snake_charmer/Database.json'
class preview {
  String species;
  String dangerRating;
  String information;

  preview({this.species, this.dangerRating, this.information});

  preview.fromJson(Map<String, dynamic> json) {
    species = json['Species'];
    dangerRating = json['DangerRating'];
    information = json['Information'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Species'] = this.species;
    data['DangerRating'] = this.dangerRating;
    data['Information'] = this.information;
    return data;
  }
}