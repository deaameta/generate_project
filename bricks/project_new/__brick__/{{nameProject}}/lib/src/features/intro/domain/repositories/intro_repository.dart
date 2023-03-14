import 'package:dartz/dartz.dart';
import 'package:{{nameProject}}/src/core/core.dart';
import 'package:{{nameProject}}/src/features/intro/domain/entities/intro.dart';

abstract class IntroRepository {
  Future<Either<Failure, IntroEntity>> getIntroInfo();
}
