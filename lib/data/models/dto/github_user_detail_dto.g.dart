// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GithubUserDetailDto _$GithubUserDetailDtoFromJson(Map<String, dynamic> json) =>
    _GithubUserDetailDto(
      id: (json['id'] as num).toInt(),
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
      htmlUrl: json['html_url'] as String,
      name: json['name'] as String?,
      company: json['company'] as String?,
      blog: json['blog'] as String?,
      location: json['location'] as String?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      publicRepos: (json['public_repos'] as num).toInt(),
      publicGists: (json['public_gists'] as num).toInt(),
      followers: (json['followers'] as num).toInt(),
      following: (json['following'] as num).toInt(),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$GithubUserDetailDtoToJson(
  _GithubUserDetailDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'login': instance.login,
  'avatar_url': instance.avatarUrl,
  'html_url': instance.htmlUrl,
  'name': instance.name,
  'company': instance.company,
  'blog': instance.blog,
  'location': instance.location,
  'email': instance.email,
  'bio': instance.bio,
  'public_repos': instance.publicRepos,
  'public_gists': instance.publicGists,
  'followers': instance.followers,
  'following': instance.following,
  'created_at': instance.createdAt,
};
