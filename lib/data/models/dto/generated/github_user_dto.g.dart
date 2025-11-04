// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../github_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GithubUserDto _$GithubUserDtoFromJson(Map<String, dynamic> json) =>
    _GithubUserDto(
      id: (json['id'] as num).toInt(),
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
      htmlUrl: json['html_url'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$GithubUserDtoToJson(_GithubUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
      'type': instance.type,
    };
