// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../github_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GithubRepo {

 int get id; String get name; String get fullName; String? get description; String get htmlUrl; int get stargazersCount; int get forksCount; String get language; GithubOwner get owner; String? get updatedAt;
/// Create a copy of GithubRepo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubRepoCopyWith<GithubRepo> get copyWith => _$GithubRepoCopyWithImpl<GithubRepo>(this as GithubRepo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubRepo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.forksCount, forksCount) || other.forksCount == forksCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,description,htmlUrl,stargazersCount,forksCount,language,owner,updatedAt);

@override
String toString() {
  return 'GithubRepo(id: $id, name: $name, fullName: $fullName, description: $description, htmlUrl: $htmlUrl, stargazersCount: $stargazersCount, forksCount: $forksCount, language: $language, owner: $owner, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $GithubRepoCopyWith<$Res>  {
  factory $GithubRepoCopyWith(GithubRepo value, $Res Function(GithubRepo) _then) = _$GithubRepoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String fullName, String? description, String htmlUrl, int stargazersCount, int forksCount, String language, GithubOwner owner, String? updatedAt
});


$GithubOwnerCopyWith<$Res> get owner;

}
/// @nodoc
class _$GithubRepoCopyWithImpl<$Res>
    implements $GithubRepoCopyWith<$Res> {
  _$GithubRepoCopyWithImpl(this._self, this._then);

  final GithubRepo _self;
  final $Res Function(GithubRepo) _then;

/// Create a copy of GithubRepo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? fullName = null,Object? description = freezed,Object? htmlUrl = null,Object? stargazersCount = null,Object? forksCount = null,Object? language = null,Object? owner = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,stargazersCount: null == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int,forksCount: null == forksCount ? _self.forksCount : forksCount // ignore: cast_nullable_to_non_nullable
as int,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as GithubOwner,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GithubRepo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GithubOwnerCopyWith<$Res> get owner {
  
  return $GithubOwnerCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [GithubRepo].
extension GithubRepoPatterns on GithubRepo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubRepo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubRepo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubRepo value)  $default,){
final _that = this;
switch (_that) {
case _GithubRepo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubRepo value)?  $default,){
final _that = this;
switch (_that) {
case _GithubRepo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String fullName,  String? description,  String htmlUrl,  int stargazersCount,  int forksCount,  String language,  GithubOwner owner,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubRepo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String fullName,  String? description,  String htmlUrl,  int stargazersCount,  int forksCount,  String language,  GithubOwner owner,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _GithubRepo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String fullName,  String? description,  String htmlUrl,  int stargazersCount,  int forksCount,  String language,  GithubOwner owner,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _GithubRepo() when $default != null:
return $default(_that.id,_that.name,_that.fullName,_that.description,_that.htmlUrl,_that.stargazersCount,_that.forksCount,_that.language,_that.owner,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _GithubRepo implements GithubRepo {
  const _GithubRepo({required this.id, required this.name, required this.fullName, required this.description, required this.htmlUrl, required this.stargazersCount, required this.forksCount, required this.language, required this.owner, required this.updatedAt});
  

@override final  int id;
@override final  String name;
@override final  String fullName;
@override final  String? description;
@override final  String htmlUrl;
@override final  int stargazersCount;
@override final  int forksCount;
@override final  String language;
@override final  GithubOwner owner;
@override final  String? updatedAt;

/// Create a copy of GithubRepo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubRepoCopyWith<_GithubRepo> get copyWith => __$GithubRepoCopyWithImpl<_GithubRepo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubRepo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.forksCount, forksCount) || other.forksCount == forksCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,description,htmlUrl,stargazersCount,forksCount,language,owner,updatedAt);

@override
String toString() {
  return 'GithubRepo(id: $id, name: $name, fullName: $fullName, description: $description, htmlUrl: $htmlUrl, stargazersCount: $stargazersCount, forksCount: $forksCount, language: $language, owner: $owner, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$GithubRepoCopyWith<$Res> implements $GithubRepoCopyWith<$Res> {
  factory _$GithubRepoCopyWith(_GithubRepo value, $Res Function(_GithubRepo) _then) = __$GithubRepoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String fullName, String? description, String htmlUrl, int stargazersCount, int forksCount, String language, GithubOwner owner, String? updatedAt
});


@override $GithubOwnerCopyWith<$Res> get owner;

}
/// @nodoc
class __$GithubRepoCopyWithImpl<$Res>
    implements _$GithubRepoCopyWith<$Res> {
  __$GithubRepoCopyWithImpl(this._self, this._then);

  final _GithubRepo _self;
  final $Res Function(_GithubRepo) _then;

/// Create a copy of GithubRepo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? fullName = null,Object? description = freezed,Object? htmlUrl = null,Object? stargazersCount = null,Object? forksCount = null,Object? language = null,Object? owner = null,Object? updatedAt = freezed,}) {
  return _then(_GithubRepo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,stargazersCount: null == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int,forksCount: null == forksCount ? _self.forksCount : forksCount // ignore: cast_nullable_to_non_nullable
as int,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as GithubOwner,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GithubRepo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GithubOwnerCopyWith<$Res> get owner {
  
  return $GithubOwnerCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on
