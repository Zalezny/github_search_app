// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../github_user_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GithubUserDetail {

 int get id; String get login; String get avatarUrl; String get htmlUrl; String? get name; String? get company; String? get blog; String? get location; String? get email; String? get bio; int get publicRepos; int get publicGists; int get followers; int get following; String get createdAt;
/// Create a copy of GithubUserDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubUserDetailCopyWith<GithubUserDetail> get copyWith => _$GithubUserDetailCopyWithImpl<GithubUserDetail>(this as GithubUserDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubUserDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.company, company) || other.company == company)&&(identical(other.blog, blog) || other.blog == blog)&&(identical(other.location, location) || other.location == location)&&(identical(other.email, email) || other.email == email)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.publicRepos, publicRepos) || other.publicRepos == publicRepos)&&(identical(other.publicGists, publicGists) || other.publicGists == publicGists)&&(identical(other.followers, followers) || other.followers == followers)&&(identical(other.following, following) || other.following == following)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,login,avatarUrl,htmlUrl,name,company,blog,location,email,bio,publicRepos,publicGists,followers,following,createdAt);

@override
String toString() {
  return 'GithubUserDetail(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, name: $name, company: $company, blog: $blog, location: $location, email: $email, bio: $bio, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $GithubUserDetailCopyWith<$Res>  {
  factory $GithubUserDetailCopyWith(GithubUserDetail value, $Res Function(GithubUserDetail) _then) = _$GithubUserDetailCopyWithImpl;
@useResult
$Res call({
 int id, String login, String avatarUrl, String htmlUrl, String? name, String? company, String? blog, String? location, String? email, String? bio, int publicRepos, int publicGists, int followers, int following, String createdAt
});




}
/// @nodoc
class _$GithubUserDetailCopyWithImpl<$Res>
    implements $GithubUserDetailCopyWith<$Res> {
  _$GithubUserDetailCopyWithImpl(this._self, this._then);

  final GithubUserDetail _self;
  final $Res Function(GithubUserDetail) _then;

/// Create a copy of GithubUserDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? login = null,Object? avatarUrl = null,Object? htmlUrl = null,Object? name = freezed,Object? company = freezed,Object? blog = freezed,Object? location = freezed,Object? email = freezed,Object? bio = freezed,Object? publicRepos = null,Object? publicGists = null,Object? followers = null,Object? following = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,blog: freezed == blog ? _self.blog : blog // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,publicRepos: null == publicRepos ? _self.publicRepos : publicRepos // ignore: cast_nullable_to_non_nullable
as int,publicGists: null == publicGists ? _self.publicGists : publicGists // ignore: cast_nullable_to_non_nullable
as int,followers: null == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as int,following: null == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GithubUserDetail].
extension GithubUserDetailPatterns on GithubUserDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubUserDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubUserDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubUserDetail value)  $default,){
final _that = this;
switch (_that) {
case _GithubUserDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubUserDetail value)?  $default,){
final _that = this;
switch (_that) {
case _GithubUserDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String login,  String avatarUrl,  String htmlUrl,  String? name,  String? company,  String? blog,  String? location,  String? email,  String? bio,  int publicRepos,  int publicGists,  int followers,  int following,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubUserDetail() when $default != null:
return $default(_that.id,_that.login,_that.avatarUrl,_that.htmlUrl,_that.name,_that.company,_that.blog,_that.location,_that.email,_that.bio,_that.publicRepos,_that.publicGists,_that.followers,_that.following,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String login,  String avatarUrl,  String htmlUrl,  String? name,  String? company,  String? blog,  String? location,  String? email,  String? bio,  int publicRepos,  int publicGists,  int followers,  int following,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _GithubUserDetail():
return $default(_that.id,_that.login,_that.avatarUrl,_that.htmlUrl,_that.name,_that.company,_that.blog,_that.location,_that.email,_that.bio,_that.publicRepos,_that.publicGists,_that.followers,_that.following,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String login,  String avatarUrl,  String htmlUrl,  String? name,  String? company,  String? blog,  String? location,  String? email,  String? bio,  int publicRepos,  int publicGists,  int followers,  int following,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _GithubUserDetail() when $default != null:
return $default(_that.id,_that.login,_that.avatarUrl,_that.htmlUrl,_that.name,_that.company,_that.blog,_that.location,_that.email,_that.bio,_that.publicRepos,_that.publicGists,_that.followers,_that.following,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _GithubUserDetail implements GithubUserDetail {
  const _GithubUserDetail({required this.id, required this.login, required this.avatarUrl, required this.htmlUrl, required this.name, required this.company, required this.blog, required this.location, required this.email, required this.bio, required this.publicRepos, required this.publicGists, required this.followers, required this.following, required this.createdAt});
  

@override final  int id;
@override final  String login;
@override final  String avatarUrl;
@override final  String htmlUrl;
@override final  String? name;
@override final  String? company;
@override final  String? blog;
@override final  String? location;
@override final  String? email;
@override final  String? bio;
@override final  int publicRepos;
@override final  int publicGists;
@override final  int followers;
@override final  int following;
@override final  String createdAt;

/// Create a copy of GithubUserDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubUserDetailCopyWith<_GithubUserDetail> get copyWith => __$GithubUserDetailCopyWithImpl<_GithubUserDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubUserDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.company, company) || other.company == company)&&(identical(other.blog, blog) || other.blog == blog)&&(identical(other.location, location) || other.location == location)&&(identical(other.email, email) || other.email == email)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.publicRepos, publicRepos) || other.publicRepos == publicRepos)&&(identical(other.publicGists, publicGists) || other.publicGists == publicGists)&&(identical(other.followers, followers) || other.followers == followers)&&(identical(other.following, following) || other.following == following)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,login,avatarUrl,htmlUrl,name,company,blog,location,email,bio,publicRepos,publicGists,followers,following,createdAt);

@override
String toString() {
  return 'GithubUserDetail(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, name: $name, company: $company, blog: $blog, location: $location, email: $email, bio: $bio, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GithubUserDetailCopyWith<$Res> implements $GithubUserDetailCopyWith<$Res> {
  factory _$GithubUserDetailCopyWith(_GithubUserDetail value, $Res Function(_GithubUserDetail) _then) = __$GithubUserDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String login, String avatarUrl, String htmlUrl, String? name, String? company, String? blog, String? location, String? email, String? bio, int publicRepos, int publicGists, int followers, int following, String createdAt
});




}
/// @nodoc
class __$GithubUserDetailCopyWithImpl<$Res>
    implements _$GithubUserDetailCopyWith<$Res> {
  __$GithubUserDetailCopyWithImpl(this._self, this._then);

  final _GithubUserDetail _self;
  final $Res Function(_GithubUserDetail) _then;

/// Create a copy of GithubUserDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? login = null,Object? avatarUrl = null,Object? htmlUrl = null,Object? name = freezed,Object? company = freezed,Object? blog = freezed,Object? location = freezed,Object? email = freezed,Object? bio = freezed,Object? publicRepos = null,Object? publicGists = null,Object? followers = null,Object? following = null,Object? createdAt = null,}) {
  return _then(_GithubUserDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,blog: freezed == blog ? _self.blog : blog // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,publicRepos: null == publicRepos ? _self.publicRepos : publicRepos // ignore: cast_nullable_to_non_nullable
as int,publicGists: null == publicGists ? _self.publicGists : publicGists // ignore: cast_nullable_to_non_nullable
as int,followers: null == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as int,following: null == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
