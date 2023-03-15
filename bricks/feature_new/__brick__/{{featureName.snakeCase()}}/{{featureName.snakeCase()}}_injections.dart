import '../../../../src/core/core.dart';
import '../../../../src/features/{{featureName.snakeCase()}}/data/data_sources/{{featureName.snakeCase()}}_api.dart';
import '../../../../src/features/{{featureName.snakeCase()}}/data/repositories/{{featureName.snakeCase()}}_repo_empl.dart';
import '../../../../src/features/{{featureName.snakeCase()}}/domain/repositories/{{featureName.snakeCase()}}_repository.dart';
import '../../../../src/features/{{featureName.snakeCase()}}/domain/usecases/{{featureName.snakeCase()}}_data_usecase.dart';

init{{featureName.pascalCase()}}Injections() {
  sl.registerLazySingleton < {{featureName.pascalCase()}}Api > (() => {{featureName.pascalCase()}}Api());
  sl.registerLazySingleton<{{featureName.pascalCase()}}Repository>(() => {{featureName.pascalCase()}}RepositoryImpl(
  sl()
  ));
  sl.registerFactory<{{featureName.pascalCase()}}DataUseCase>(() => {{featureName.pascalCase()}}DataUseCase
  (
  sl
  (
  )
  )
  );
}