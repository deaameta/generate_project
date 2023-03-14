import 'package:dartz/dartz.dart';
import 'package:{{nameProject}}/src/core/core.dart';
import 'package:{{nameProject}}/src/features/countries/domain/entities/country_model.dart';
import 'package:{{nameProject}}/src/features/countries/domain/usecases/countries_data_usecase.dart';

abstract class CountriesRepository {
  Future<Either<Failure, List<CountryModel>>> getCountriesData({required CountriesParams params});
}
