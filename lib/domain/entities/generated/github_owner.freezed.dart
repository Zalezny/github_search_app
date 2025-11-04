// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../github_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GithubOwner {

 String get login; String get avatarUrl; String get htmlUrl;
/// Create a copy of GithubOwner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubOwnerCopyWith<GithubOwner> get copyWith => _$GithubOwnerCopyWithImpl<GithubOwner>(this as GithubOwner, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubOwner&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
}


@override
int get hashCode => Object.hash(runtimeType,login,avatarUrl,htmlUrl);

@override
String toString() {
  return 'GithubOwner(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
}


}

/// @nodoc
abstract mixin class $GithubOwnerCopyWith<$Res>  {
  factory $GithubOwnerCopyWith(GithubOwner value, $Res Function(GithubOwner) _then) = _$GithubOwnerCopyWithImpl;
@useResult
$Res call({
 String login, String avatarUrl, String htmlUrl
});




}
/// @nodoc
class _$GithubOwnerCopyWithImpl<$Res>
    implements $GithubOwnerCopyWith<$Res> {
  _$GithubOwnerCopyWithImpl(this._self, this._then);

  final GithubOwner _self;
  final $Res Function(GithubOwner) _then;

/// Create a copy of GithubOwner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? avatarUrl = null,Object? htmlUrl = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GithubOwner].
extension GithubOwnerPatterns on GithubOwner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubOwner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubOwner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubOwner value)  $default,){
final _that = this;
switch (_that) {
case _GithubOwner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubOwner value)?  $default,){
final _that = this;
switch (_that) {
case _GithubOwner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  String avatarUrl,  String htmlUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubOwner() when $default != null:
return $default(_that.login,_that.avatarUrl,_that.htmlUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  String avatarUrl,  String htmlUrl)  $default,) {final _that = this;
switch (_that) {
case _GithubOwner():
return $default(_that.login,_that.avatarUrl,_that.htmlUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  String avatarUrl,  String htmlUrl)?  $default,) {final _that = this;
switch (_that) {
case _GithubOwner() when $default != null:
return $default(_that.login,_that.avatarUrl,_that.htmlUrl);case _:
  return null;

}
}

}

/// @nodoc


class _GithubOwner implements GithubOwner {
  const _GithubOwner({required this.login, required this.avatarUrl, required this.htmlUrl});
  

@override final  String login;
@override final  String avatarUrl;
@override final  String htmlUrl;

/// Create a copy of GithubOwner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubOwnerCopyWith<_GithubOwner> get copyWith => __$GithubOwnerCopyWithImpl<_GithubOwner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubOwner&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
}


@override
int get hashCode => Object.hash(runtimeType,login,avatarUrl,htmlUrl);

@override
String toString() {
  return 'GithubOwner(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
}


}

/// @nodoc
abstract mixin class _$GithubOwnerCopyWith<$Res> implements $GithubOwnerCopyWith<$Res> {
  factory _$GithubOwnerCopyWith(_GithubOwner value, $Res Function(_GithubOwner) _then) = __$GithubOwnerCopyWithImpl;
@override @useResult
$Res call({
 String login, String avatarUrl, String htmlUrl
});




}
/// @nodoc
class __$GithubOwnerCopyWithImpl<$Res>
    implements _$GithubOwnerCopyWith<$Res> {
  __$GithubOwnerCopyWithImpl(this._self, this._then);

  final _GithubOwner _self;
  final $Res Function(_GithubOwner) _then;

/// Create a copy of GithubOwner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? avatarUrl = null,Object? htmlUrl = null,}) {
  return _then(_GithubOwner(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
