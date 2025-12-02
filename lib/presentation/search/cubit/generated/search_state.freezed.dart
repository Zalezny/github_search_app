// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 SearchCategory get selectedCategory; String get searchQuery; List<SearchResultItem> get results; bool get isLoading; bool get isLoadingMore; int get pageNumber; bool get hasMorePages; String? get error;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCategory,searchQuery,const DeepCollectionEquality().hash(results),isLoading,isLoadingMore,pageNumber,hasMorePages,error);

@override
String toString() {
  return 'SearchState(selectedCategory: $selectedCategory, searchQuery: $searchQuery, results: $results, isLoading: $isLoading, isLoadingMore: $isLoadingMore, pageNumber: $pageNumber, hasMorePages: $hasMorePages, error: $error)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 SearchCategory selectedCategory, String searchQuery, List<SearchResultItem> results, bool isLoading, bool isLoadingMore, int pageNumber, bool hasMorePages, String? error
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedCategory = null,Object? searchQuery = null,Object? results = null,Object? isLoading = null,Object? isLoadingMore = null,Object? pageNumber = null,Object? hasMorePages = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as SearchCategory,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchResultItem>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,hasMorePages: null == hasMorePages ? _self.hasMorePages : hasMorePages // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchCategory selectedCategory,  String searchQuery,  List<SearchResultItem> results,  bool isLoading,  bool isLoadingMore,  int pageNumber,  bool hasMorePages,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.selectedCategory,_that.searchQuery,_that.results,_that.isLoading,_that.isLoadingMore,_that.pageNumber,_that.hasMorePages,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchCategory selectedCategory,  String searchQuery,  List<SearchResultItem> results,  bool isLoading,  bool isLoadingMore,  int pageNumber,  bool hasMorePages,  String? error)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.selectedCategory,_that.searchQuery,_that.results,_that.isLoading,_that.isLoadingMore,_that.pageNumber,_that.hasMorePages,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchCategory selectedCategory,  String searchQuery,  List<SearchResultItem> results,  bool isLoading,  bool isLoadingMore,  int pageNumber,  bool hasMorePages,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.selectedCategory,_that.searchQuery,_that.results,_that.isLoading,_that.isLoadingMore,_that.pageNumber,_that.hasMorePages,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({this.selectedCategory = SearchCategory.repos, this.searchQuery = '', final  List<SearchResultItem> results = const [], this.isLoading = false, this.isLoadingMore = false, this.pageNumber = 1, this.hasMorePages = true, this.error}): _results = results;
  

@override@JsonKey() final  SearchCategory selectedCategory;
@override@JsonKey() final  String searchQuery;
 final  List<SearchResultItem> _results;
@override@JsonKey() List<SearchResultItem> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  int pageNumber;
@override@JsonKey() final  bool hasMorePages;
@override final  String? error;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.hasMorePages, hasMorePages) || other.hasMorePages == hasMorePages)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCategory,searchQuery,const DeepCollectionEquality().hash(_results),isLoading,isLoadingMore,pageNumber,hasMorePages,error);

@override
String toString() {
  return 'SearchState(selectedCategory: $selectedCategory, searchQuery: $searchQuery, results: $results, isLoading: $isLoading, isLoadingMore: $isLoadingMore, pageNumber: $pageNumber, hasMorePages: $hasMorePages, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 SearchCategory selectedCategory, String searchQuery, List<SearchResultItem> results, bool isLoading, bool isLoadingMore, int pageNumber, bool hasMorePages, String? error
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedCategory = null,Object? searchQuery = null,Object? results = null,Object? isLoading = null,Object? isLoadingMore = null,Object? pageNumber = null,Object? hasMorePages = null,Object? error = freezed,}) {
  return _then(_SearchState(
selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as SearchCategory,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchResultItem>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,hasMorePages: null == hasMorePages ? _self.hasMorePages : hasMorePages // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
