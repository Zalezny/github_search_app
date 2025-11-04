// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_owner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GithubOwnerDto {

 String get login;@JsonKey(name: 'avatar_url') String get avatarUrl;@JsonKey(name: 'html_url') String get htmlUrl;
/// Create a copy of GithubOwnerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubOwnerDtoCopyWith<GithubOwnerDto> get copyWith => _$GithubOwnerDtoCopyWithImpl<GithubOwnerDto>(this as GithubOwnerDto, _$identity);

  /// Serializes this GithubOwnerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubOwnerDto&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,avatarUrl,htmlUrl);

@override
String toString() {
  return 'GithubOwnerDto(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
}


}

/// @nodoc
abstract mixin class $GithubOwnerDtoCopyWith<$Res>  {
  factory $GithubOwnerDtoCopyWith(GithubOwnerDto value, $Res Function(GithubOwnerDto) _then) = _$GithubOwnerDtoCopyWithImpl;
@useResult
$Res call({
 String login,@JsonKey(name: 'avatar_url') String avatarUrl,@JsonKey(name: 'html_url') String htmlUrl
});




}
/// @nodoc
class _$GithubOwnerDtoCopyWithImpl<$Res>
    implements $GithubOwnerDtoCopyWith<$Res> {
  _$GithubOwnerDtoCopyWithImpl(this._self, this._then);

  final GithubOwnerDto _self;
  final $Res Function(GithubOwnerDto) _then;

/// Create a copy of GithubOwnerDto
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


/// Adds pattern-matching-related methods to [GithubOwnerDto].
extension GithubOwnerDtoPatterns on GithubOwnerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GithubOwnerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GithubOwnerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GithubOwnerDto value)  $default,){
final _that = this;
switch (_that) {
case _GithubOwnerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GithubOwnerDto value)?  $default,){
final _that = this;
switch (_that) {
case _GithubOwnerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'html_url')  String htmlUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GithubOwnerDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'html_url')  String htmlUrl)  $default,) {final _that = this;
switch (_that) {
case _GithubOwnerDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login, @JsonKey(name: 'avatar_url')  String avatarUrl, @JsonKey(name: 'html_url')  String htmlUrl)?  $default,) {final _that = this;
switch (_that) {
case _GithubOwnerDto() when $default != null:
return $default(_that.login,_that.avatarUrl,_that.htmlUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GithubOwnerDto extends GithubOwnerDto {
  const _GithubOwnerDto({required this.login, @JsonKey(name: 'avatar_url') required this.avatarUrl, @JsonKey(name: 'html_url') required this.htmlUrl}): super._();
  factory _GithubOwnerDto.fromJson(Map<String, dynamic> json) => _$GithubOwnerDtoFromJson(json);

@override final  String login;
@override@JsonKey(name: 'avatar_url') final  String avatarUrl;
@override@JsonKey(name: 'html_url') final  String htmlUrl;

/// Create a copy of GithubOwnerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubOwnerDtoCopyWith<_GithubOwnerDto> get copyWith => __$GithubOwnerDtoCopyWithImpl<_GithubOwnerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GithubOwnerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubOwnerDto&&(identical(other.login, login) || other.login == login)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,avatarUrl,htmlUrl);

@override
String toString() {
  return 'GithubOwnerDto(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
}


}

/// @nodoc
abstract mixin class _$GithubOwnerDtoCopyWith<$Res> implements $GithubOwnerDtoCopyWith<$Res> {
  factory _$GithubOwnerDtoCopyWith(_GithubOwnerDto value, $Res Function(_GithubOwnerDto) _then) = __$GithubOwnerDtoCopyWithImpl;
@override @useResult
$Res call({
 String login,@JsonKey(name: 'avatar_url') String avatarUrl,@JsonKey(name: 'html_url') String htmlUrl
});




}
/// @nodoc
class __$GithubOwnerDtoCopyWithImpl<$Res>
    implements _$GithubOwnerDtoCopyWith<$Res> {
  __$GithubOwnerDtoCopyWithImpl(this._self, this._then);

  final _GithubOwnerDto _self;
  final $Res Function(_GithubOwnerDto) _then;

/// Create a copy of GithubOwnerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? avatarUrl = null,Object? htmlUrl = null,}) {
  return _then(_GithubOwnerDto(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
