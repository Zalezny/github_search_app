// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../github_repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GithubRepoDto _$GithubRepoDtoFromJson(Map<String, dynamic> json) =>
    _GithubRepoDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      description: json['description'] as String?,
      htmlUrl: json['html_url'] as String,
      stargazersCount: (json['stargazers_count'] as num).toInt(),
      forksCount: (json['forks_count'] as num).toInt(),
      language: json['language'] as String?,
      owner: GithubOwnerDto.fromJson(json['owner'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$GithubRepoDtoToJson(_GithubRepoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
      'html_url': instance.htmlUrl,
      'stargazers_count': instance.stargazersCount,
      'forks_count': instance.forksCount,
      'language': instance.language,
      'owner': instance.owner.toJson(),
      'updated_at': instance.updatedAt,
    };
