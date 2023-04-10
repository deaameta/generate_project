import 'package:dartz/dartz.dart';

import 'package:{{projectName}}/src/core/core.dart';

abstract class {{featureName.pascalCase()}}Repository {
  Future<Either<Failure, bool>> get{{featureName.pascalCase()}}Data({required int id});
}
