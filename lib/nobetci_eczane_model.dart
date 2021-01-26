// To parse this JSON data, do
//
//     final nobetciEczaneModel = nobetciEczaneModelFromJson(jsonString);

import 'dart:convert';

NobetciEczaneModel nobetciEczaneModelFromJson(String str) =>
    NobetciEczaneModel.fromJson(json.decode(str));

String nobetciEczaneModelToJson(NobetciEczaneModel data) =>
    json.encode(data.toJson());

class NobetciEczaneModel {
  NobetciEczaneModel({
    this.success,
    this.status,
    this.data,
  });

  bool success;
  String status;
  List<Datum> data;

  factory NobetciEczaneModel.fromJson(Map<String, dynamic> json) =>
      NobetciEczaneModel(
        success: json["success"],
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.eczaneAdi,
    this.eczaneIlce,
    this.eczaneAdres,
    this.eczaneTelefon,
    this.eczaneIl,
  });

  String eczaneAdi;
  String eczaneIlce;
  String eczaneAdres;
  String eczaneTelefon;
  String eczaneIl;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        eczaneAdi: json["eczane_adi"],
        eczaneIlce: json["eczane_ilce"],
        eczaneAdres: json["eczane_adres"],
        eczaneTelefon: json["eczane_telefon"],
        eczaneIl: json["eczane_il"],
      );

  Map<String, dynamic> toJson() => {
        "eczane_adi": eczaneAdi,
        "eczane_ilce": eczaneIlce,
        "eczane_adres": eczaneAdres,
        "eczane_telefon": eczaneTelefon,
        "eczane_il": eczaneIl,
      };
}
