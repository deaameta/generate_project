import 'package:dartz/dartz.dart';
import 'package:{{nameProject}}/src/features/countries/domain/entities/country_model.dart';
import 'package:{{nameProject}}/src/features/countries/domain/repositories/countries_repository.dart';
import 'package:{{nameProject}}/src/core/core.dart';

class CountriesDataUseCase extends UseCase<List<CountryModel>, CountriesParams> {
  final CountriesRepository repository;

  CountriesDataUseCase(this.repository);

  @override
  Future<Either<Failure, List<CountryModel>>> call(CountriesParams params) async {
    return await repository.getCountriesData(params: params);
  }
}

class CountriesParams {
  CountriesParams();
}
