class Snake_Preview {
  String species;
  String dangerRating;
  String information;

  Snake_Preview({this.species, this.dangerRating, this.information});

  Snake_Preview.fromJson(Map<String, dynamic> json) {
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