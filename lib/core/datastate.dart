import 'package:either_dart/either.dart';
import 'failure.dart';

typedef DataState<T> = Future<Either<Failure, T>>;
