import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:{{nameProject}}/src/core/core.dart';
import 'package:{{nameProject}}/src/features/countries/domain/entities/country_model.dart';
import 'package:{{nameProject}}/src/features/countries/domain/usecases/countries_data_usecase.dart';

class CountriesApi {
  Future<Either<Failure, List<CountryModel>>> getCountriesData({required CountriesParams params}) async {
    try {
      final result = (await sl<Dio>().get(
        "v3.1/all",
      ))
          .data;

      List<CountryModel> list = [];
      if (result is List<dynamic>) {
        for (var elementJson in result) {
          list.add(CountryModel.fromJson(elementJson));
        }
      }
      return Right(list);
    } on DioError catch (e) {
      throw ServerException(handleDioError(e), e.response?.statusCode);
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }
}
