import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class CountryModel {
  CountryModel({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.flag,
    this.population,
    this.fifa,
    this.timezones,
    this.continents,
    this.coatOfArms,
    this.startOfWeek,
  });

  @JsonKey(fromJson: parsingName)
  String? name;
  @JsonKey(fromJson: parsingImages)
  List<String>? coatOfArms;

  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  List<double>? latlng;
  bool? landlocked;
  List<String>? borders;
  double? area;
  String? flag;
  double? population;
  String? fifa;
  List<String>? timezones;
  List<String>? continents;
  String? startOfWeek;

  static String parsingName(Map<String, dynamic>? data) {
    return data?["common"] ?? "";
  }

  static parsingImages(Map<String, dynamic>? data) {
    if (data != null) {
      List<String> images = [];
      data.forEach((key, value) {
        if (value != null) {
          images.add(value);
        }
      });
      return images;
    } else {
      return null;
    }
  }

  factory CountryModel.fromJson(json) => _$CountryModelFromJson(json);

  toJson() => _$CountryModelToJson(this);
}
