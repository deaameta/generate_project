import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/core.dart';
class {{featureName.pascalCase()}}Api {


  Future<Either<Failure, bool>> get{{featureName.pascalCase()}}Data({required int id}) async {
    try {
      final result = (await sl<Dio>().get("balance-info/golc",)).data;
      Map<String,dynamic>? body = result["body"];
      // BalanceInfoModel.fromJson(body)
        return  const Right(true);

    } on DioError catch (e) {
      throw ServerException(handleDioError(e),e.response?.statusCode);
    } catch (e) {
      throw ServerException(e.toString(),null);
    }
  }

}
