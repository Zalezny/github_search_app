// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../results_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResultsState {

 List<dynamic> get results; String get query; SearchCategory get category; bool get isLoading; String? get error;
/// Create a copy of ResultsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultsStateCopyWith<ResultsState> get copyWith => _$ResultsStateCopyWithImpl<ResultsState>(this as ResultsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultsState&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results),query,category,isLoading,error);

@override
String toString() {
  return 'ResultsState(results: $results, query: $query, category: $category, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $ResultsStateCopyWith<$Res>  {
  factory $ResultsStateCopyWith(ResultsState value, $Res Function(ResultsState) _then) = _$ResultsStateCopyWithImpl;
@useResult
$Res call({
 List<dynamic> results, String query, SearchCategory category, bool isLoading, String? error
});




}
/// @nodoc
class _$ResultsStateCopyWithImpl<$Res>
    implements $ResultsStateCopyWith<$Res> {
  _$ResultsStateCopyWithImpl(this._self, this._then);

  final ResultsState _self;
  final $Res Function(ResultsState) _then;

/// Create a copy of ResultsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? query = null,Object? category = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<dynamic>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as SearchCategory,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResultsState].
extension ResultsStatePatterns on ResultsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResultsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResultsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResultsState value)  $default,){
final _that = this;
switch (_that) {
case _ResultsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResultsState value)?  $default,){
final _that = this;
switch (_that) {
case _ResultsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<dynamic> results,  String query,  SearchCategory category,  bool isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResultsState() when $default != null:
return $default(_that.results,_that.query,_that.category,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<dynamic> results,  String query,  SearchCategory category,  bool isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _ResultsState():
return $default(_that.results,_that.query,_that.category,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<dynamic> results,  String query,  SearchCategory category,  bool isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _ResultsState() when $default != null:
return $default(_that.results,_that.query,_that.category,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ResultsState implements ResultsState {
  const _ResultsState({final  List<dynamic> results = const [], this.query = '', this.category = SearchCategory.repos, this.isLoading = false, this.error}): _results = results;
  

 final  List<dynamic> _results;
@override@JsonKey() List<dynamic> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey() final  String query;
@override@JsonKey() final  SearchCategory category;
@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of ResultsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultsStateCopyWith<_ResultsState> get copyWith => __$ResultsStateCopyWithImpl<_ResultsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultsState&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),query,category,isLoading,error);

@override
String toString() {
  return 'ResultsState(results: $results, query: $query, category: $category, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ResultsStateCopyWith<$Res> implements $ResultsStateCopyWith<$Res> {
  factory _$ResultsStateCopyWith(_ResultsState value, $Res Function(_ResultsState) _then) = __$ResultsStateCopyWithImpl;
@override @useResult
$Res call({
 List<dynamic> results, String query, SearchCategory category, bool isLoading, String? error
});




}
/// @nodoc
class __$ResultsStateCopyWithImpl<$Res>
    implements _$ResultsStateCopyWith<$Res> {
  __$ResultsStateCopyWithImpl(this._self, this._then);

  final _ResultsState _self;
  final $Res Function(_ResultsState) _then;

/// Create a copy of ResultsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,Object? query = null,Object? category = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_ResultsState(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<dynamic>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as SearchCategory,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
