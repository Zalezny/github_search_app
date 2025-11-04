import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/datasources/github_repo_api_service.dart';
import 'package:github_search_app/data/models/dto/github_owner_dto.dart';
import 'package:github_search_app/data/models/dto/github_repo_dto.dart';
import 'package:github_search_app/data/models/responses/search_repos_response.dart';
import 'package:github_search_app/data/repositories/github_repo_repository_impl.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:mocktail/mocktail.dart';

class MockGithubRepoApiService extends Mock implements GithubRepoApiService {}

void main() {
  late GithubRepoRepositoryImpl repository;
  late MockGithubRepoApiService mockApiService;

  setUp(() {
    mockApiService = MockGithubRepoApiService();
    repository = GithubRepoRepositoryImpl(mockApiService);
  });

  group('GithubRepoRepositoryImpl', () {
    group('searchRepositories', () {
      final tQuery = 'flutter';
      final tPage = 1;
      final tPerPage = 30;

      final tRepoDto = GithubRepoDto(
        id: 1,
        name: 'test-repo',
        fullName: 'owner/test-repo',
        owner: const GithubOwnerDto(
          login: 'owner',
          avatarUrl: 'https://example.com/avatar.png',
          htmlUrl: 'https://github.com/owner',
        ),
        htmlUrl: 'https://github.com/owner/test-repo',
        description: 'Test description',
        stargazersCount: 100,
        forksCount: 50,
        language: 'Dart',
        updatedAt: '2024-01-01T00:00:00Z',
      );

      final tSearchResponse = SearchReposResponse(
        totalCount: 1,
        incompleteResults: false,
        items: [tRepoDto],
      );

      test('should return list of GithubRepo when API call is successful', () async {
        when(
          () => mockApiService.searchRepositories(tQuery, tPage, tPerPage),
        ).thenAnswer((_) async => tSearchResponse);

        final result = await repository.searchRepositories(
          query: tQuery,
          page: tPage,
          perPage: tPerPage,
        );

        expect(result, isA<Right<String, List<GithubRepo>>>());
        result.fold((error) => fail('Should return Right'), (repos) {
          expect(repos.length, 1);
          expect(repos[0].name, 'test-repo');
          expect(repos[0].stargazersCount, 100);
        });
        verify(() => mockApiService.searchRepositories(tQuery, tPage, tPerPage)).called(1);
      });

      test('should return error message when API throws DioException with 404', () async {
        when(() => mockApiService.searchRepositories(tQuery, tPage, tPerPage)).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: ''),
            response: Response(requestOptions: RequestOptions(path: ''), statusCode: 404),
            type: DioExceptionType.badResponse,
          ),
        );

        final result = await repository.searchRepositories(
          query: tQuery,
          page: tPage,
          perPage: tPerPage,
        );

        expect(result, isA<Left<String, List<GithubRepo>>>());
        result.fold(
          (error) => expect(error, 'Resource not found.'),
          (repos) => fail('Should return Left'),
        );
      });

      test('should return generic error message when unknown exception is thrown', () async {
        when(
          () => mockApiService.searchRepositories(tQuery, tPage, tPerPage),
        ).thenThrow(Exception('Unknown error'));

        final result = await repository.searchRepositories(
          query: tQuery,
          page: tPage,
          perPage: tPerPage,
        );

        expect(result, isA<Left<String, List<GithubRepo>>>());
        result.fold(
          (error) => expect(error, contains('Unexpected error')),
          (repos) => fail('Should return Left'),
        );
      });
    });
  });
}
