// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../github_owner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GithubOwnerDto _$GithubOwnerDtoFromJson(Map<String, dynamic> json) =>
    _GithubOwnerDto(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
      htmlUrl: json['html_url'] as String,
    );

Map<String, dynamic> _$GithubOwnerDtoToJson(_GithubOwnerDto instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
    };
