import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:{{nameProject}}/src/features/countries/countries_injections.dart';
import 'package:{{nameProject}}/src/core/core.dart';
import 'package:{{nameProject}}/src/features/intro/intro_injection.dart';
import 'package:{{nameProject}}/src/features/main/main_injections.dart';

final sl = GetIt.instance;

Future<void> initInjections() async {
  await initCoreInjections();
  await initCountriesInjections();
  await initIntroInjections();
  await initMainInjections();
}

Future<void> initCoreInjections() async {
  initRootLogger();

  sl.registerSingletonAsync<Dio>(() async {
    final dio = Dio(BaseOptions(
        baseUrl: ApiUrl,
        validateStatus: (s) {
          return s! < 300;
        },
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          "charset": "utf-8",
          "Accept-Charset": "utf-8",
        },
        responseType: ResponseType.json));

    dio.interceptors.add(LoggerInterceptor(
      logger,
      request: true,
      requestBody: true,
      error: true,
      responseBody: true,
      responseHeader: false,
      requestHeader: true,
    ));
    return dio;
  });
  await sl.isReady<Dio>();
  sl.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });
  await sl.isReady<SharedPreferences>();

  sl.registerLazySingleton<AppSharedPrefs>(() => AppSharedPrefs(sl()));
}
