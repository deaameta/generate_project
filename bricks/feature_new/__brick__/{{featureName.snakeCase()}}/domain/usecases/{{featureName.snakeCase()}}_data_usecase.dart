import 'package:dartz/dartz.dart';
import '../repositories/{{featureName.snakeCase()}}_repository.dart';
import '../../../../core/core.dart';
class {{featureName.pascalCase()}}DataUseCase extends UseCase<bool, {{featureName.pascalCase()}}Params> {
  final  {{featureName.pascalCase()}}Repository repository;
{{featureName.pascalCase()}}DataUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call({{featureName.pascalCase()}}Params params) async {
    return await repository.get{{featureName.pascalCase()}}Data(id: params.id);
  }
}

class {{featureName.pascalCase()}}Params {
  int id ;
{{featureName.pascalCase()}}Params({required this.id});
}
