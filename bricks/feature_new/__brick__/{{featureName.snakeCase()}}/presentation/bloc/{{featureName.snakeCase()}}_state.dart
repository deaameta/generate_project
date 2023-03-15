part of '{{featureName.snakeCase()}}_bloc.dart';

@immutable
abstract class {{featureName.pascalCase()}}State {}

class {{featureName.pascalCase()}}Initial extends {{featureName.pascalCase()}}State {}

/// State when success get transaction
class {{featureName.pascalCase()}}LoadingState extends {{featureName.pascalCase()}}State {}

/// State when success get transaction
class {{featureName.pascalCase()}}SuccessState extends {{featureName.pascalCase()}}State {

  {{featureName.pascalCase()}}SuccessState();
}

/// State when failure get transaction
class {{featureName.pascalCase()}}FailureState extends {{featureName.pascalCase()}}State {
  final String message;

  {{featureName.pascalCase()}}FailureState(this.message);
}
