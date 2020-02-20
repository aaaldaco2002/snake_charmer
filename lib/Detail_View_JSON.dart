import 'dart:convert';

class Snake_Detail_View {
  String species;
  List<Image> image;
  String venom;
  List<Image> venomSymbol;
  List<Image> lethal;
  String information;
  String whatToDoIfBitten;

  Snake_Detail_View
      (
      {
        this.species,
        this.image,
        this.venom,
        this.venomSymbol,
        this.lethal,
        this.information,
        this.whatToDoIfBitten
      }
      );

  Snake_Detail_View.fromJson(Map<String, dynamic> json) {
    species = json['Species'];
    if (json['Image'] != null) {
      image = new List<Image>();
      json['Image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    venom = json['Venom'];
    if (json['VenomSymbol'] != null) {
      venomSymbol = new List<Image>();
      json['VenomSymbol'].forEach((v) {
        venomSymbol.add(new Image.fromJson(v));
      });
    }
    if (json['Lethal'] != null) {
      lethal = new List<Image>();
      json['Lethal'].forEach((v) {
        lethal.add(new Image.fromJson(v));
      });
    }
    information = json['Information'];
    whatToDoIfBitten = json['What to do if bitten'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Species'] = this.species;
    if (this.image != null) {
      data['Image'] = this.image.map((v) => v.toJson()).toList();
    }
    data['Venom'] = this.venom;
    if (this.venomSymbol != null) {
      data['VenomSymbol'] = this.venomSymbol.map((v) => v.toJson()).toList();
    }
    if (this.lethal != null) {
      data['Lethal'] = this.lethal.map((v) => v.toJson()).toList();
    }
    data['Information'] = this.information;
    data['What to do if bitten'] = this.whatToDoIfBitten;
    return data;
  }
}

class Image {
  String asset;

  Image({this.asset});

  Image.fromJson(Map<String, dynamic> json) {
    asset = json['asset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['asset'] = this.asset;
    return data;
  }
}
