import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';

abstract class {{featureName.pascalCase()}}Repository {
  Future<Either<Failure, bool>> get{{featureName.pascalCase()}}Data({required int id});
}
