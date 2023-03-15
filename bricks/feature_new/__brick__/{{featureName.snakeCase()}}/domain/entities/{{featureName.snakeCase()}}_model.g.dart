// GENERATED CODE - DO NOT MODIFY BY HAND

part of '{{featureName.snakeCase()}}_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

{{featureName.pascalCase()}}Model _${{featureName.pascalCase()}}ModelFromJson(Map<String, dynamic> json) => {{featureName.pascalCase()}}Model(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _${{featureName.pascalCase()}}ModelToJson({{featureName.pascalCase()}}Model instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
