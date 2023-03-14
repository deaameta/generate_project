import 'package:{{nameProject}}/src/core/core.dart';
import 'package:{{nameProject}}/src/features/intro/data/data_sources/intro_api.dart';
import 'package:{{nameProject}}/src/features/intro/data/repositories/intro_repo_empl.dart';
import 'package:{{nameProject}}/src/features/intro/domain/usecases/get_intro_info.dart';
import 'domain/repositories/intro_repository.dart';

initIntroInjections() async {
  sl.registerLazySingleton<IntroApi>(() => IntroApi());
  sl.registerLazySingleton<IntroRepository>(() => IntroRepositoryImpl(sl()));
  sl.registerFactory<GetIntroInfoUseCase>(() => GetIntroInfoUseCase(sl()));
}
