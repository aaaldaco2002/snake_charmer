class Snake {
  String species;
  List<Image> image;
  String venom;
  List<VenomSymbol> venomSymbol;
  String lethal;
  String information;
  String whatToDoIfBitten;
  String link;

  Snake(
      {this.species,
        this.image,
        this.venom,
        this.venomSymbol,
        this.lethal,
        this.information,
        this.whatToDoIfBitten,
        this.link});

  Snake.fromJson(Map<String, dynamic> json) {
    species = json['Species'];
    if (json['Image'] != null) {
      image = new List<Image>();
      json['Image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    venom = json['Venom'];
    if (json['VenomSymbol'] != null) {
      venomSymbol = new List<VenomSymbol>();
      json['VenomSymbol'].forEach((v) {
        venomSymbol.add(new VenomSymbol.fromJson(v));
      });
    }
    lethal = json['Lethal'];
    information = json['Information'];
    whatToDoIfBitten = json['What to do if Bitten'];
    link = json['Link'];
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
    data['Lethal'] = this.lethal;
    data['Information'] = this.information;
    data['What to do if Bitten'] = this.whatToDoIfBitten;
    data['Link'] = this.link;
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