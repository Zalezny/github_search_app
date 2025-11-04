// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GithubUser {

 int get id; String get login; String get avatarUrl; String get htmlUrl; String get type;
/// Create a copy of GithubUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubUserCopyWith<GithubUser> get copyWith => _$GithubUserCopyWithImpl<GithubUser>(this as GithubUser, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubUser&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,login,avatarUrl,htmlUrl,type);

@override
String toString() {
  return 'GithubUser(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, type: $type)';
}


}

/// @nodoc
abstract mixin class $GithubUserCopyWith<$Res>  {
  factory $GithubUserCopyWith(GithubUser value, $Res Function(GithubUser) _then) = _$GithubUserCopyWithImpl;
@useResult
$Res call({
 int id, String login, String avatarUrl, String htmlUrl, String type
});




}
/// @nodoc
class _$GithubUserCopyWithImpl<$Res>
    implements $GithubUserCopyWith<$Res> {
  _$GithubUserCopyWithImpl(this._self, this._then);

  final GithubUser _self;
  final $Res Function(GithubUser) _then;

/// Create a copy of GithubUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? login = null,Object? avatarUrl = null,Object? htmlUrl = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GithubUser].
extension GithubUserPatterns on GithubUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubUser value)  $default,){
final _that = this;
switch (_that) {
case _GithubUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubUser value)?  $default,){
final _that = this;
switch (_that) {
case _GithubUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String login,  String avatarUrl,  String htmlUrl,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubUser() when $default != null:
return $default(_that.id,_that.login,_that.avatarUrl,_that.htmlUrl,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String login,  String avatarUrl,  String htmlUrl,  String type)  $default,) {final _that = this;
switch (_that) {
case _GithubUser():
return $default(_that.id,_that.login,_that.avatarUrl,_that.htmlUrl,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String login,  String avatarUrl,  String htmlUrl,  String type)?  $default,) {final _that = this;
switch (_that) {
case _GithubUser() when $default != null:
return $default(_that.id,_that.login,_that.avatarUrl,_that.htmlUrl,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _GithubUser implements GithubUser {
  const _GithubUser({required this.id, required this.login, required this.avatarUrl, required this.htmlUrl, required this.type});
  

@override final  int id;
@override final  String login;
@override final  String avatarUrl;
@override final  String htmlUrl;
@override final  String type;

/// Create a copy of GithubUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubUserCopyWith<_GithubUser> get copyWith => __$GithubUserCopyWithImpl<_GithubUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubUser&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,login,avatarUrl,htmlUrl,type);

@override
String toString() {
  return 'GithubUser(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GithubUserCopyWith<$Res> implements $GithubUserCopyWith<$Res> {
  factory _$GithubUserCopyWith(_GithubUser value, $Res Function(_GithubUser) _then) = __$GithubUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String login, String avatarUrl, String htmlUrl, String type
});




}
/// @nodoc
class __$GithubUserCopyWithImpl<$Res>
    implements _$GithubUserCopyWith<$Res> {
  __$GithubUserCopyWithImpl(this._self, this._then);

  final _GithubUser _self;
  final $Res Function(_GithubUser) _then;

/// Create a copy of GithubUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? login = null,Object? avatarUrl = null,Object? htmlUrl = null,Object? type = null,}) {
  return _then(_GithubUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
