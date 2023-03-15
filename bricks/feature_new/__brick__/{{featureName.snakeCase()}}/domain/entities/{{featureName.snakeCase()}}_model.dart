import 'package:json_annotation/json_annotation.dart';
part '{{featureName.snakeCase()}}_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class {{featureName.pascalCase()}}Model {
{{featureName.pascalCase()}}Model({
    required this.id,
    required this.name
  });
  late final int id;
  late final String name;

  factory {{featureName.pascalCase()}}Model.fromJson(json) => _${{featureName.pascalCase()}}ModelFromJson(json);

  toJson() => _${{featureName.pascalCase()}}ModelToJson(this);
}