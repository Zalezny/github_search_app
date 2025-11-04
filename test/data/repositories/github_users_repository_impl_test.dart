import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/datasources/github_users_api_service.dart';
import 'package:github_search_app/data/models/dto/github_user_dto.dart';
import 'package:github_search_app/data/models/responses/search_users_response.dart';
import 'package:github_search_app/data/repositories/github_users_repository_impl.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubUsersApiService extends Mock implements GithubUsersApiService {}

void main() {
  late GithubUsersRepositoryImpl repository;
  late MockGithubUsersApiService mockApiService;

  setUp(() {
    mockApiService = MockGithubUsersApiService();
    repository = GithubUsersRepositoryImpl(mockApiService);
  });

  group('GithubUsersRepositoryImpl', () {
    group('searchUsers', () {
      final tQuery = 'john';
      final tPage = 1;
      final tPerPage = 30;

      final tUserDto = GithubUserDto(
        id: 1,
        login: 'johndoe',
        avatarUrl: 'https://example.com/avatar.png',
        htmlUrl: 'https://github.com/johndoe',
        type: 'User',
      );

      final tSearchResponse = SearchUsersResponse(
        totalCount: 1,
        incompleteResults: false,
        items: [tUserDto],
      );

      test('should return list of GithubUser when API call is successful', () async {
        // Arrange
        when(
          () => mockApiService.searchUsers(tQuery, tPage, tPerPage),
        ).thenAnswer((_) async => tSearchResponse);

        // Act
        final result = await repository.searchUsers(query: tQuery, page: tPage, perPage: tPerPage);

        // Assert
        expect(result, isA<Right<String, List<GithubUser>>>());
        result.fold((error) => fail('Should return Right'), (users) {
          expect(users.length, 1);
          expect(users[0].login, 'johndoe');
          expect(users[0].type, 'User');
        });
        verify(() => mockApiService.searchUsers(tQuery, tPage, tPerPage)).called(1);
      });

      test('should return error message when API throws DioException with 404', () async {
        // Arrange
        when(() => mockApiService.searchUsers(tQuery, tPage, tPerPage)).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: ''),
            response: Response(requestOptions: RequestOptions(path: ''), statusCode: 404),
            type: DioExceptionType.badResponse,
          ),
        );

        // Act
        final result = await repository.searchUsers(query: tQuery, page: tPage, perPage: tPerPage);

        // Assert
        expect(result, isA<Left<String, List<GithubUser>>>());
        result.fold(
          (error) => expect(error, 'Resource not found.'),
          (users) => fail('Should return Left'),
        );
      });

      test('should return generic error message when unknown exception is thrown', () async {
        // Arrange
        when(
          () => mockApiService.searchUsers(tQuery, tPage, tPerPage),
        ).thenThrow(Exception('Unknown error'));

        // Act
        final result = await repository.searchUsers(query: tQuery, page: tPage, perPage: tPerPage);

        // Assert
        expect(result, isA<Left<String, List<GithubUser>>>());
        result.fold(
          (error) => expect(error, contains('Unexpected error')),
          (users) => fail('Should return Left'),
        );
      });
    });
  });
}
