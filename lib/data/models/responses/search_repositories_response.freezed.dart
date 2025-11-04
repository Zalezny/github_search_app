// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repositories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchRepositoriesResponse {

@JsonKey(name: 'total_count') int get totalCount;@JsonKey(name: 'incomplete_results') bool get incompleteResults; List<GithubRepositoryDto> get items;
/// Create a copy of SearchRepositoriesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchRepositoriesResponseCopyWith<SearchRepositoriesResponse> get copyWith => _$SearchRepositoriesResponseCopyWithImpl<SearchRepositoriesResponse>(this as SearchRepositoriesResponse, _$identity);

  /// Serializes this SearchRepositoriesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchRepositoriesResponse&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.incompleteResults, incompleteResults) || other.incompleteResults == incompleteResults)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,incompleteResults,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'SearchRepositoriesResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
}


}

/// @nodoc
abstract mixin class $SearchRepositoriesResponseCopyWith<$Res>  {
  factory $SearchRepositoriesResponseCopyWith(SearchRepositoriesResponse value, $Res Function(SearchRepositoriesResponse) _then) = _$SearchRepositoriesResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_count') int totalCount,@JsonKey(name: 'incomplete_results') bool incompleteResults, List<GithubRepositoryDto> items
});




}
/// @nodoc
class _$SearchRepositoriesResponseCopyWithImpl<$Res>
    implements $SearchRepositoriesResponseCopyWith<$Res> {
  _$SearchRepositoriesResponseCopyWithImpl(this._self, this._then);

  final SearchRepositoriesResponse _self;
  final $Res Function(SearchRepositoriesResponse) _then;

/// Create a copy of SearchRepositoriesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? incompleteResults = null,Object? items = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,incompleteResults: null == incompleteResults ? _self.incompleteResults : incompleteResults // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GithubRepositoryDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchRepositoriesResponse].
extension SearchRepositoriesResponsePatterns on SearchRepositoriesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchRepositoriesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchRepositoriesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchRepositoriesResponse value)  $default,){
final _that = this;
switch (_that) {
case _SearchRepositoriesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchRepositoriesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SearchRepositoriesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'incomplete_results')  bool incompleteResults,  List<GithubRepositoryDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchRepositoriesResponse() when $default != null:
return $default(_that.totalCount,_that.incompleteResults,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'incomplete_results')  bool incompleteResults,  List<GithubRepositoryDto> items)  $default,) {final _that = this;
switch (_that) {
case _SearchRepositoriesResponse():
return $default(_that.totalCount,_that.incompleteResults,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_count')  int totalCount, @JsonKey(name: 'incomplete_results')  bool incompleteResults,  List<GithubRepositoryDto> items)?  $default,) {final _that = this;
switch (_that) {
case _SearchRepositoriesResponse() when $default != null:
return $default(_that.totalCount,_that.incompleteResults,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchRepositoriesResponse implements SearchRepositoriesResponse {
  const _SearchRepositoriesResponse({@JsonKey(name: 'total_count') required this.totalCount, @JsonKey(name: 'incomplete_results') required this.incompleteResults, required final  List<GithubRepositoryDto> items}): _items = items;
  factory _SearchRepositoriesResponse.fromJson(Map<String, dynamic> json) => _$SearchRepositoriesResponseFromJson(json);

@override@JsonKey(name: 'total_count') final  int totalCount;
@override@JsonKey(name: 'incomplete_results') final  bool incompleteResults;
 final  List<GithubRepositoryDto> _items;
@override List<GithubRepositoryDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SearchRepositoriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchRepositoriesResponseCopyWith<_SearchRepositoriesResponse> get copyWith => __$SearchRepositoriesResponseCopyWithImpl<_SearchRepositoriesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchRepositoriesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchRepositoriesResponse&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.incompleteResults, incompleteResults) || other.incompleteResults == incompleteResults)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,incompleteResults,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SearchRepositoriesResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
}


}

/// @nodoc
abstract mixin class _$SearchRepositoriesResponseCopyWith<$Res> implements $SearchRepositoriesResponseCopyWith<$Res> {
  factory _$SearchRepositoriesResponseCopyWith(_SearchRepositoriesResponse value, $Res Function(_SearchRepositoriesResponse) _then) = __$SearchRepositoriesResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_count') int totalCount,@JsonKey(name: 'incomplete_results') bool incompleteResults, List<GithubRepositoryDto> items
});




}
/// @nodoc
class __$SearchRepositoriesResponseCopyWithImpl<$Res>
    implements _$SearchRepositoriesResponseCopyWith<$Res> {
  __$SearchRepositoriesResponseCopyWithImpl(this._self, this._then);

  final _SearchRepositoriesResponse _self;
  final $Res Function(_SearchRepositoriesResponse) _then;

/// Create a copy of SearchRepositoriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? incompleteResults = null,Object? items = null,}) {
  return _then(_SearchRepositoriesResponse(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,incompleteResults: null == incompleteResults ? _self.incompleteResults : incompleteResults // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GithubRepositoryDto>,
  ));
}


}

// dart format on
