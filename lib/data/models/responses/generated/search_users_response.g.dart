// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../search_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchUsersResponse _$SearchUsersResponseFromJson(Map<String, dynamic> json) =>
    _SearchUsersResponse(
      totalCount: (json['total_count'] as num).toInt(),
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => GithubUserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchUsersResponseToJson(
  _SearchUsersResponse instance,
) => <String, dynamic>{
  'total_count': instance.totalCount,
  'incomplete_results': instance.incompleteResults,
  'items': instance.items.map((e) => e.toJson()).toList(),
};
