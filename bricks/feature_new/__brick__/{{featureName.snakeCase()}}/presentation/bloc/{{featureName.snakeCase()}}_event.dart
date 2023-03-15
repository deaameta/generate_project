part of '{{featureName.snakeCase()}}_bloc.dart';

@immutable
abstract class {{featureName.pascalCase()}}Event {}

/// Event to get transaction
class {{featureName.pascalCase()}}DataEvent extends {{featureName.pascalCase()}}Event {
  final int id;
{{featureName.pascalCase()}}DataEvent({required this.id});
}



