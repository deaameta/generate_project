import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../core/injections.dart';
import '../../domain/usecases/{{featureName.snakeCase()}}_data_usecase.dart';

part '{{featureName.snakeCase()}}_event.dart';

part '{{featureName.snakeCase()}}_state.dart';

class {{featureName.pascalCase()}}Bloc extends Bloc<{{featureName.pascalCase()}}DataEvent, {{featureName.pascalCase()}}State> {
  late {{featureName.pascalCase()}}DataUseCase {{featureName.camelCase()}}UseCase;

  {{featureName.pascalCase()}}Bloc() : super({{featureName.pascalCase()}}Initial()) {
{{featureName.camelCase()}}UseCase = sl<{{featureName.pascalCase()}}DataUseCase>();
    on<{{featureName.pascalCase()}}DataEvent>(_get{{featureName.pascalCase()}}DataEvent);
  }

_get{{featureName.pascalCase()}}DataEvent({{featureName.pascalCase()}}DataEvent event, Emitter<{{featureName.pascalCase()}}State> emitter) async {
    emitter({{featureName.pascalCase()}}LoadingState());
    final allActiveBalancesResponse = await {{featureName.camelCase()}}UseCase.call({{featureName.pascalCase()}}Params(id: event.id));
    allActiveBalancesResponse.fold((l) {
      emitter({{featureName.pascalCase()}}FailureState(l.errorMessage));
    }, (r) async {
      emitter({{featureName.pascalCase()}}SuccessState());
    });
  }
}
