import 'package:dartz/dartz.dart';
import 'package:testproj/Features/number_trivia/domain/entities/number_trivia.dart';
import 'package:testproj/Features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:testproj/core/error/failures.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository{
  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
  
}