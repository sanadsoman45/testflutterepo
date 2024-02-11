import 'package:dartz/dartz.dart';
import 'package:testproj/Features/number_trivia/domain/entities/number_trivia.dart';
import 'package:testproj/Features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:testproj/core/error/failures.dart';

class GetConcreteNumberTrivia{
  final NumberTriviaRepository repository;

  const GetConcreteNumberTrivia({required this.repository});

  Future<Either<Failure, NumberTrivia>> execute({
    required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}