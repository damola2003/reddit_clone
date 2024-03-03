import 'package:fpdart/fpdart.dart';
import 'package:reddit_clone/models/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;

typedef Futurevoid = FutureEither<void>;
