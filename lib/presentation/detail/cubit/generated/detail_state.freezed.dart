// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailState {

 dynamic get item; bool get isLoading; String? get error;
/// Create a copy of DetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailStateCopyWith<DetailState> get copyWith => _$DetailStateCopyWithImpl<DetailState>(this as DetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailState&&const DeepCollectionEquality().equals(other.item, item)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item),isLoading,error);

@override
String toString() {
  return 'DetailState(item: $item, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $DetailStateCopyWith<$Res>  {
  factory $DetailStateCopyWith(DetailState value, $Res Function(DetailState) _then) = _$DetailStateCopyWithImpl;
@useResult
$Res call({
 dynamic item, bool isLoading, String? error
});




}
/// @nodoc
class _$DetailStateCopyWithImpl<$Res>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._self, this._then);

  final DetailState _self;
  final $Res Function(DetailState) _then;

/// Create a copy of DetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? item = freezed,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as dynamic,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailState].
extension DetailStatePatterns on DetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailState value)  $default,){
final _that = this;
switch (_that) {
case _DetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailState value)?  $default,){
final _that = this;
switch (_that) {
case _DetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic item,  bool isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailState() when $default != null:
return $default(_that.item,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic item,  bool isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _DetailState():
return $default(_that.item,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic item,  bool isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _DetailState() when $default != null:
return $default(_that.item,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _DetailState implements DetailState {
  const _DetailState({this.item, this.isLoading = false, this.error});
  

@override final  dynamic item;
@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of DetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailStateCopyWith<_DetailState> get copyWith => __$DetailStateCopyWithImpl<_DetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailState&&const DeepCollectionEquality().equals(other.item, item)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(item),isLoading,error);

@override
String toString() {
  return 'DetailState(item: $item, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$DetailStateCopyWith<$Res> implements $DetailStateCopyWith<$Res> {
  factory _$DetailStateCopyWith(_DetailState value, $Res Function(_DetailState) _then) = __$DetailStateCopyWithImpl;
@override @useResult
$Res call({
 dynamic item, bool isLoading, String? error
});




}
/// @nodoc
class __$DetailStateCopyWithImpl<$Res>
    implements _$DetailStateCopyWith<$Res> {
  __$DetailStateCopyWithImpl(this._self, this._then);

  final _DetailState _self;
  final $Res Function(_DetailState) _then;

/// Create a copy of DetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? item = freezed,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_DetailState(
item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as dynamic,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
