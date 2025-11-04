// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repositories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchRepositoriesResponse _$SearchRepositoriesResponseFromJson(
  Map<String, dynamic> json,
) => _SearchRepositoriesResponse(
  totalCount: (json['total_count'] as num).toInt(),
  incompleteResults: json['incomplete_results'] as bool,
  items: (json['items'] as List<dynamic>)
      .map((e) => GithubRepositoryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SearchRepositoriesResponseToJson(
  _SearchRepositoriesResponse instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'incomplete_results': instance.incompleteResults,
  'items': instance.items,
};
