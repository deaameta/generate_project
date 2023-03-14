import 'package:{{nameProject}}/src/features/countries/data/data_sources/countries_api.dart';
import 'package:{{nameProject}}/src/features/countries/data/repositories/countries_repo_empl.dart';
import 'package:{{nameProject}}/src/features/countries/domain/repositories/countries_repository.dart';
import 'package:{{nameProject}}/src/features/countries/domain/usecases/countries_data_usecase.dart';
import 'package:{{nameProject}}/src/core/core.dart';

initCountriesInjections() {
  sl.registerLazySingleton<CountriesApi>(() => CountriesApi());
  sl.registerLazySingleton<CountriesRepository>(() => CountriesRepositoryImpl(
        sl(),
      ));
  sl.registerFactory<CountriesDataUseCase>(() => CountriesDataUseCase(sl()));
}
