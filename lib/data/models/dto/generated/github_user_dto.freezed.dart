// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../github_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GithubUserDto {

 int get id; String get login;@JsonKey(name: 'avatar_url') String get avatarUrl;@JsonKey(name: 'html_url') String get htmlUrl; String get type;
/// Create a copy of GithubUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubUserDtoCopyWith<GithubUserDto> get copyWith => _$GithubUserDtoCopyWithImpl<GithubUserDto>(this as GithubUserDto, _$identity);

  /// Serializes this GithubUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,login,avatarUrl,htmlUrl,type);

@override
String toString() {
  return 'GithubUserDto(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, type: $type)';
}


}

/// @nodoc
abstract mixin class $GithubUserDtoCopyWith<$Res>  {
  factory $GithubUserDtoCopyWith(GithubUserDto value, $Res Function(GithubUserDto) _then) = _$GithubUserDtoCopyWithImpl;
@useResult
$Res call({
 int id, String login,@JsonKey(name: 'avatar_url') String avatarUrl,@JsonKey(name: 'html_url') String htmlUrl, String type
});




}
/// @nodoc
class _$GithubUserDtoCopyWithImpl<$Res>
    implements $GithubUserDtoCopyWith<$Res> {
  _$GithubUserDtoCopyWithImpl(this._self, this._then);

  final GithubUserDto _self;
  final $Res Function(GithubUserDto) _then;

/// Create a copy of GithubUserDto
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


/// Adds pattern-matching-related methods to [GithubUserDto].
extension GithubUserDtoPatterns on GithubUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubUserDto value)  $default,){
final _that = this;
switch (_that) {
case _GithubUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _GithubUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String login, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'html_url')  String htmlUrl,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubUserDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String login, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'html_url')  String htmlUrl,  String type)  $default,) {final _that = this;
switch (_that) {
case _GithubUserDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String login, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'html_url')  String htmlUrl,  String type)?  $default,) {final _that = this;
switch (_that) {
case _GithubUserDto() when $default != null:
return $default(_that.id,_that.login,_that.avatarUrl,_that.htmlUrl,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GithubUserDto extends GithubUserDto {
  const _GithubUserDto({required this.id, required this.login, @JsonKey(name: 'avatar_url') required this.avatarUrl, @JsonKey(name: 'html_url') required this.htmlUrl, required this.type}): super._();
  factory _GithubUserDto.fromJson(Map<String, dynamic> json) => _$GithubUserDtoFromJson(json);

@override final  int id;
@override final  String login;
@override@JsonKey(name: 'avatar_url') final  String avatarUrl;
@override@JsonKey(name: 'html_url') final  String htmlUrl;
@override final  String type;

/// Create a copy of GithubUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubUserDtoCopyWith<_GithubUserDto> get copyWith => __$GithubUserDtoCopyWithImpl<_GithubUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GithubUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,login,avatarUrl,htmlUrl,type);

@override
String toString() {
  return 'GithubUserDto(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GithubUserDtoCopyWith<$Res> implements $GithubUserDtoCopyWith<$Res> {
  factory _$GithubUserDtoCopyWith(_GithubUserDto value, $Res Function(_GithubUserDto) _then) = __$GithubUserDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String login,@JsonKey(name: 'avatar_url') String avatarUrl,@JsonKey(name: 'html_url') String htmlUrl, String type
});




}
/// @nodoc
class __$GithubUserDtoCopyWithImpl<$Res>
    implements _$GithubUserDtoCopyWith<$Res> {
  __$GithubUserDtoCopyWithImpl(this._self, this._then);

  final _GithubUserDto _self;
  final $Res Function(_GithubUserDto) _then;

/// Create a copy of GithubUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? login = null,Object? avatarUrl = null,Object? htmlUrl = null,Object? type = null,}) {
  return _then(_GithubUserDto(
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
