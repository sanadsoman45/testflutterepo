import 'package:flutter_test/flutter_test.dart';
import 'package:testproj/Features/number_trivia/domain/entities/number_trivia.dart';
import 'package:testproj/Features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:testproj/Features/number_trivia/domain/usecases/getconcretenumbertrivia.dart';

class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia usecase; // Declare as nullable using 'late'
  late MockNumberTriviaRepository mockNumberTriviaRepository; // Declare as nullable using 'late'

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository(); // Assign a value
    usecase = GetConcreteNumberTrivia(repository: mockNumberTriviaRepository); // Assign a value
  });

  final tNumber = 1;
  final tNumbertrivia = NumberTrivia(number: 1, text: 'test');

  test('should get number from the repository', () async {
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(1)).thenAnswer((_) async => Right(tNumbertrivia));
    final result = await usecase.execute(number:tNumber);
    expect(result, right);
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
