import 'package:dartz/dartz.dart';

abstract class ModelRepo {
  Future<Either<String, String>> runModel();

}