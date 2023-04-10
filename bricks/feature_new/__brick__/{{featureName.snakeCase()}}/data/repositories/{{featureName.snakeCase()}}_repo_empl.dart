import 'package:dartz/dartz.dart';

import 'package:{{projectName}}/src/core/core.dart';
import '../../domain/repositories/{{featureName.snakeCase()}}_repository.dart';
import '../data_sources/{{featureName.snakeCase()}}_api.dart';

class {{featureName.pascalCase()}}RepositoryImpl extends {{featureName.pascalCase()}}Repository {
  final {{featureName.pascalCase()}}Api {{featureName.camelCase()}}Api;

{{featureName.pascalCase()}}RepositoryImpl(this.{{featureName.camelCase()}}Api);

  @override
  Future<Either<Failure, bool>> get{{featureName.pascalCase()}}Data({required int id}) async {
    try {
      final result = await {{featureName.camelCase()}}Api.get{{featureName.pascalCase()}}Data(id:id);
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
