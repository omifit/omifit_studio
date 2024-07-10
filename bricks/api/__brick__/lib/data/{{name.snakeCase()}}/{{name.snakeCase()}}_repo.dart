import 'package:dartz/dartz.dart';
import 'package:omifit/core/exceptions.dart';

abstract class {{name.pascalCase()}}Repo {
  Future<Either<ApiException, dynamic>> fnName();
}
