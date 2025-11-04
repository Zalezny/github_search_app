// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../search_repos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchReposResponse _$SearchReposResponseFromJson(Map<String, dynamic> json) =>
    _SearchReposResponse(
      totalCount: (json['total_count'] as num).toInt(),
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => GithubRepoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchReposResponseToJson(
  _SearchReposResponse instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'incomplete_results': instance.incompleteResults,
  'items': instance.items.map((e) => e.toJson()).toList(),
};
