// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) => CountryModel(
      name: CountryModel.parsingName(json['name'] as Map<String, dynamic>?),
      tld: (json['tld'] as List<dynamic>?)?.map((e) => e as String).toList(),
      cca2: json['cca2'] as String?,
      ccn3: json['ccn3'] as String?,
      cca3: json['cca3'] as String?,
      cioc: json['cioc'] as String?,
      independent: json['independent'] as bool?,
      status: json['status'] as String?,
      unMember: json['unMember'] as bool?,
      capital: (json['capital'] as List<dynamic>?)?.map((e) => e as String).toList(),
      altSpellings: (json['altSpellings'] as List<dynamic>?)?.map((e) => e as String).toList(),
      region: json['region'] as String?,
      subregion: json['subregion'] as String?,
      latlng: (json['latlng'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
      landlocked: json['landlocked'] as bool?,
      borders: (json['borders'] as List<dynamic>?)?.map((e) => e as String).toList(),
      area: (json['area'] as num?)?.toDouble(),
      flag: json['flag'] as String?,
      population: (json['population'] as num?)?.toDouble(),
      fifa: json['fifa'] as String?,
      timezones: (json['timezones'] as List<dynamic>?)?.map((e) => e as String).toList(),
      continents: (json['continents'] as List<dynamic>?)?.map((e) => e as String).toList(),
      coatOfArms: CountryModel.parsingImages(json['coatOfArms'] as Map<String, dynamic>?),
      startOfWeek: json['startOfWeek'] as String?,
    );

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) => <String, dynamic>{
      'name': instance.name,
      'coatOfArms': instance.coatOfArms,
      'tld': instance.tld,
      'cca2': instance.cca2,
      'ccn3': instance.ccn3,
      'cca3': instance.cca3,
      'cioc': instance.cioc,
      'independent': instance.independent,
      'status': instance.status,
      'unMember': instance.unMember,
      'capital': instance.capital,
      'altSpellings': instance.altSpellings,
      'region': instance.region,
      'subregion': instance.subregion,
      'latlng': instance.latlng,
      'landlocked': instance.landlocked,
      'borders': instance.borders,
      'area': instance.area,
      'flag': instance.flag,
      'population': instance.population,
      'fifa': instance.fifa,
      'timezones': instance.timezones,
      'continents': instance.continents,
      'startOfWeek': instance.startOfWeek,
    };
