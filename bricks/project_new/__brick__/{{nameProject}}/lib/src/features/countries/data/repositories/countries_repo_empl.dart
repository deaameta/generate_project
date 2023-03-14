import 'package:dartz/dartz.dart';
import 'package:{{nameProject}}/src/features/countries/data/data_sources/countries_api.dart';
import 'package:{{nameProject}}/src/features/countries/domain/entities/country_model.dart';
import 'package:{{nameProject}}/src/features/countries/domain/repositories/countries_repository.dart';
import 'package:{{nameProject}}/src/features/countries/domain/usecases/countries_data_usecase.dart';
import 'package:{{nameProject}}/src/core/core.dart';

class CountriesRepositoryImpl extends CountriesRepository {
  final CountriesApi settingsApi;

  CountriesRepositoryImpl(this.settingsApi);

  @override
  Future<Either<Failure, List<CountryModel>>> getCountriesData({required CountriesParams params}) async {
    try {
      final result = await settingsApi.getCountriesData(params: params);
      return result.fold((l) {
        return Left(ServerFailure(l.errorMessage, null));
      }, (r) {
        return Right(r);
      });
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    }
  }
}
