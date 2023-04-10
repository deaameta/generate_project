import 'package:{{projectName}}/src/core/core.dart';
import 'data/data_sources/{{featureName.snakeCase()}}_api.dart';
import 'data/repositories/{{featureName.snakeCase()}}_repo_empl.dart';
import 'domain/repositories/{{featureName.snakeCase()}}_repository.dart';
import 'domain/usecases/{{featureName.snakeCase()}}_data_usecase.dart';

init{{featureName.pascalCase()}}Injections() {
  sl.registerLazySingleton < {{featureName.pascalCase()}}Api > (() => {{featureName.pascalCase()}}Api());
  sl.registerLazySingleton<{{featureName.pascalCase()}}Repository>(() => {{featureName.pascalCase()}}RepositoryImpl(sl()));
  sl.registerFactory<{{featureName.pascalCase()}}DataUseCase>(() => {{featureName.pascalCase()}}DataUseCase(sl()));
}
