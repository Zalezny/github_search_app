// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GithubRepositoryDto {

 int get id; String get name;@JsonKey(name: 'full_name') String get fullName; String? get description;@JsonKey(name: 'html_url') String get htmlUrl;@JsonKey(name: 'stargazers_count') int get stargazersCount;@JsonKey(name: 'forks_count') int get forksCount; String? get language; GithubOwnerDto get owner;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of GithubRepositoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubRepositoryDtoCopyWith<GithubRepositoryDto> get copyWith => _$GithubRepositoryDtoCopyWithImpl<GithubRepositoryDto>(this as GithubRepositoryDto, _$identity);

  /// Serializes this GithubRepositoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubRepositoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.forksCount, forksCount) || other.forksCount == forksCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,description,htmlUrl,stargazersCount,forksCount,language,owner,updatedAt);

@override
String toString() {
  return 'GithubRepositoryDto(id: $id, name: $name, fullName: $fullName, description: $description, htmlUrl: $htmlUrl, stargazersCount: $stargazersCount, forksCount: $forksCount, language: $language, owner: $owner, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GithubRepositoryDtoCopyWith<$Res>  {
  factory $GithubRepositoryDtoCopyWith(GithubRepositoryDto value, $Res Function(GithubRepositoryDto) _then) = _$GithubRepositoryDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'full_name') String fullName, String? description,@JsonKey(name: 'html_url') String htmlUrl,@JsonKey(name: 'stargazers_count') int stargazersCount,@JsonKey(name: 'forks_count') int forksCount, String? language, GithubOwnerDto owner,@JsonKey(name: 'updated_at') String? updatedAt
});


$GithubOwnerDtoCopyWith<$Res> get owner;

}
/// @nodoc
class _$GithubRepositoryDtoCopyWithImpl<$Res>
    implements $GithubRepositoryDtoCopyWith<$Res> {
  _$GithubRepositoryDtoCopyWithImpl(this._self, this._then);

  final GithubRepositoryDto _self;
  final $Res Function(GithubRepositoryDto) _then;

/// Create a copy of GithubRepositoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? fullName = null,Object? description = freezed,Object? htmlUrl = null,Object? stargazersCount = null,Object? forksCount = null,Object? language = freezed,Object? owner = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,stargazersCount: null == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int,forksCount: null == forksCount ? _self.forksCount : forksCount // ignore: cast_nullable_to_non_nullable
as int,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as GithubOwnerDto,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GithubRepositoryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GithubOwnerDtoCopyWith<$Res> get owner {
  
  return $GithubOwnerDtoCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [GithubRepositoryDto].
extension GithubRepositoryDtoPatterns on GithubRepositoryDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubRepositoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubRepositoryDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubRepositoryDto value)  $default,){
final _that = this;
switch (_that) {
case _GithubRepositoryDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubRepositoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _GithubRepositoryDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'full_name')  String fullName,  String? description, @JsonKey(name: 'html_url')  String htmlUrl, @JsonKey(name: 'stargazers_count')  int stargazersCount, @JsonKey(name: 'forks_count')  int forksCount,  String? language,  GithubOwnerDto owner, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubRepositoryDto() when $default != null:
return $default(_that.id,_that.name,_that.fullName,_that.description,_that.htmlUrl,_that.stargazersCount,_that.forksCount,_that.language,_that.owner,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'full_name')  String fullName,  String? description, @JsonKey(name: 'html_url')  String htmlUrl, @JsonKey(name: 'stargazers_count')  int stargazersCount, @JsonKey(name: 'forks_count')  int forksCount,  String? language,  GithubOwnerDto owner, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _GithubRepositoryDto():
return $default(_that.id,_that.name,_that.fullName,_that.description,_that.htmlUrl,_that.stargazersCount,_that.forksCount,_that.language,_that.owner,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'full_name')  String fullName,  String? description, @JsonKey(name: 'html_url')  String htmlUrl, @JsonKey(name: 'stargazers_count')  int stargazersCount, @JsonKey(name: 'forks_count')  int forksCount,  String? language,  GithubOwnerDto owner, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _GithubRepositoryDto() when $default != null:
return $default(_that.id,_that.name,_that.fullName,_that.description,_that.htmlUrl,_that.stargazersCount,_that.forksCount,_that.language,_that.owner,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GithubRepositoryDto extends GithubRepositoryDto {
  const _GithubRepositoryDto({required this.id, required this.name, @JsonKey(name: 'full_name') required this.fullName, required this.description, @JsonKey(name: 'html_url') required this.htmlUrl, @JsonKey(name: 'stargazers_count') required this.stargazersCount, @JsonKey(name: 'forks_count') required this.forksCount, required this.language, required this.owner, @JsonKey(name: 'updated_at') required this.updatedAt}): super._();
  factory _GithubRepositoryDto.fromJson(Map<String, dynamic> json) => _$GithubRepositoryDtoFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String? description;
@override@JsonKey(name: 'html_url') final  String htmlUrl;
@override@JsonKey(name: 'stargazers_count') final  int stargazersCount;
@override@JsonKey(name: 'forks_count') final  int forksCount;
@override final  String? language;
@override final  GithubOwnerDto owner;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of GithubRepositoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubRepositoryDtoCopyWith<_GithubRepositoryDto> get copyWith => __$GithubRepositoryDtoCopyWithImpl<_GithubRepositoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GithubRepositoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubRepositoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.forksCount, forksCount) || other.forksCount == forksCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,description,htmlUrl,stargazersCount,forksCount,language,owner,updatedAt);

@override
String toString() {
  return 'GithubRepositoryDto(id: $id, name: $name, fullName: $fullName, description: $description, htmlUrl: $htmlUrl, stargazersCount: $stargazersCount, forksCount: $forksCount, language: $language, owner: $owner, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GithubRepositoryDtoCopyWith<$Res> implements $GithubRepositoryDtoCopyWith<$Res> {
  factory _$GithubRepositoryDtoCopyWith(_GithubRepositoryDto value, $Res Function(_GithubRepositoryDto) _then) = __$GithubRepositoryDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'full_name') String fullName, String? description,@JsonKey(name: 'html_url') String htmlUrl,@JsonKey(name: 'stargazers_count') int stargazersCount,@JsonKey(name: 'forks_count') int forksCount, String? language, GithubOwnerDto owner,@JsonKey(name: 'updated_at') String? updatedAt
});


@override $GithubOwnerDtoCopyWith<$Res> get owner;

}
/// @nodoc
class __$GithubRepositoryDtoCopyWithImpl<$Res>
    implements _$GithubRepositoryDtoCopyWith<$Res> {
  __$GithubRepositoryDtoCopyWithImpl(this._self, this._then);

  final _GithubRepositoryDto _self;
  final $Res Function(_GithubRepositoryDto) _then;

/// Create a copy of GithubRepositoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? fullName = null,Object? description = freezed,Object? htmlUrl = null,Object? stargazersCount = null,Object? forksCount = null,Object? language = freezed,Object? owner = null,Object? updatedAt = freezed,}) {
  return _then(_GithubRepositoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,stargazersCount: null == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int,forksCount: null == forksCount ? _self.forksCount : forksCount // ignore: cast_nullable_to_non_nullable
as int,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as GithubOwnerDto,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GithubRepositoryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GithubOwnerDtoCopyWith<$Res> get owner {
  
  return $GithubOwnerDtoCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on
