// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchResultItem {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultItem);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchResultItem()';
}


}

/// @nodoc
class $SearchResultItemCopyWith<$Res>  {
$SearchResultItemCopyWith(SearchResultItem _, $Res Function(SearchResultItem) __);
}


/// Adds pattern-matching-related methods to [SearchResultItem].
extension SearchResultItemPatterns on SearchResultItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchResultRepo value)?  repo,TResult Function( SearchResultUser value)?  user,TResult Function( SearchResultUserDetail value)?  userDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchResultRepo() when repo != null:
return repo(_that);case SearchResultUser() when user != null:
return user(_that);case SearchResultUserDetail() when userDetail != null:
return userDetail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchResultRepo value)  repo,required TResult Function( SearchResultUser value)  user,required TResult Function( SearchResultUserDetail value)  userDetail,}){
final _that = this;
switch (_that) {
case SearchResultRepo():
return repo(_that);case SearchResultUser():
return user(_that);case SearchResultUserDetail():
return userDetail(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchResultRepo value)?  repo,TResult? Function( SearchResultUser value)?  user,TResult? Function( SearchResultUserDetail value)?  userDetail,}){
final _that = this;
switch (_that) {
case SearchResultRepo() when repo != null:
return repo(_that);case SearchResultUser() when user != null:
return user(_that);case SearchResultUserDetail() when userDetail != null:
return userDetail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( GithubRepo repo)?  repo,TResult Function( GithubUser user)?  user,TResult Function( GithubUserDetail userDetail)?  userDetail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchResultRepo() when repo != null:
return repo(_that.repo);case SearchResultUser() when user != null:
return user(_that.user);case SearchResultUserDetail() when userDetail != null:
return userDetail(_that.userDetail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( GithubRepo repo)  repo,required TResult Function( GithubUser user)  user,required TResult Function( GithubUserDetail userDetail)  userDetail,}) {final _that = this;
switch (_that) {
case SearchResultRepo():
return repo(_that.repo);case SearchResultUser():
return user(_that.user);case SearchResultUserDetail():
return userDetail(_that.userDetail);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( GithubRepo repo)?  repo,TResult? Function( GithubUser user)?  user,TResult? Function( GithubUserDetail userDetail)?  userDetail,}) {final _that = this;
switch (_that) {
case SearchResultRepo() when repo != null:
return repo(_that.repo);case SearchResultUser() when user != null:
return user(_that.user);case SearchResultUserDetail() when userDetail != null:
return userDetail(_that.userDetail);case _:
  return null;

}
}

}

/// @nodoc


class SearchResultRepo implements SearchResultItem {
  const SearchResultRepo(this.repo);
  

 final  GithubRepo repo;

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultRepoCopyWith<SearchResultRepo> get copyWith => _$SearchResultRepoCopyWithImpl<SearchResultRepo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultRepo&&(identical(other.repo, repo) || other.repo == repo));
}


@override
int get hashCode => Object.hash(runtimeType,repo);

@override
String toString() {
  return 'SearchResultItem.repo(repo: $repo)';
}


}

/// @nodoc
abstract mixin class $SearchResultRepoCopyWith<$Res> implements $SearchResultItemCopyWith<$Res> {
  factory $SearchResultRepoCopyWith(SearchResultRepo value, $Res Function(SearchResultRepo) _then) = _$SearchResultRepoCopyWithImpl;
@useResult
$Res call({
 GithubRepo repo
});


$GithubRepoCopyWith<$Res> get repo;

}
/// @nodoc
class _$SearchResultRepoCopyWithImpl<$Res>
    implements $SearchResultRepoCopyWith<$Res> {
  _$SearchResultRepoCopyWithImpl(this._self, this._then);

  final SearchResultRepo _self;
  final $Res Function(SearchResultRepo) _then;

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? repo = null,}) {
  return _then(SearchResultRepo(
null == repo ? _self.repo : repo // ignore: cast_nullable_to_non_nullable
as GithubRepo,
  ));
}

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GithubRepoCopyWith<$Res> get repo {
  
  return $GithubRepoCopyWith<$Res>(_self.repo, (value) {
    return _then(_self.copyWith(repo: value));
  });
}
}

/// @nodoc


class SearchResultUser implements SearchResultItem {
  const SearchResultUser(this.user);
  

 final  GithubUser user;

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultUserCopyWith<SearchResultUser> get copyWith => _$SearchResultUserCopyWithImpl<SearchResultUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'SearchResultItem.user(user: $user)';
}


}

/// @nodoc
abstract mixin class $SearchResultUserCopyWith<$Res> implements $SearchResultItemCopyWith<$Res> {
  factory $SearchResultUserCopyWith(SearchResultUser value, $Res Function(SearchResultUser) _then) = _$SearchResultUserCopyWithImpl;
@useResult
$Res call({
 GithubUser user
});


$GithubUserCopyWith<$Res> get user;

}
/// @nodoc
class _$SearchResultUserCopyWithImpl<$Res>
    implements $SearchResultUserCopyWith<$Res> {
  _$SearchResultUserCopyWithImpl(this._self, this._then);

  final SearchResultUser _self;
  final $Res Function(SearchResultUser) _then;

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SearchResultUser(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as GithubUser,
  ));
}

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GithubUserCopyWith<$Res> get user {
  
  return $GithubUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class SearchResultUserDetail implements SearchResultItem {
  const SearchResultUserDetail(this.userDetail);
  

 final  GithubUserDetail userDetail;

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultUserDetailCopyWith<SearchResultUserDetail> get copyWith => _$SearchResultUserDetailCopyWithImpl<SearchResultUserDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultUserDetail&&(identical(other.userDetail, userDetail) || other.userDetail == userDetail));
}


@override
int get hashCode => Object.hash(runtimeType,userDetail);

@override
String toString() {
  return 'SearchResultItem.userDetail(userDetail: $userDetail)';
}


}

/// @nodoc
abstract mixin class $SearchResultUserDetailCopyWith<$Res> implements $SearchResultItemCopyWith<$Res> {
  factory $SearchResultUserDetailCopyWith(SearchResultUserDetail value, $Res Function(SearchResultUserDetail) _then) = _$SearchResultUserDetailCopyWithImpl;
@useResult
$Res call({
 GithubUserDetail userDetail
});


$GithubUserDetailCopyWith<$Res> get userDetail;

}
/// @nodoc
class _$SearchResultUserDetailCopyWithImpl<$Res>
    implements $SearchResultUserDetailCopyWith<$Res> {
  _$SearchResultUserDetailCopyWithImpl(this._self, this._then);

  final SearchResultUserDetail _self;
  final $Res Function(SearchResultUserDetail) _then;

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userDetail = null,}) {
  return _then(SearchResultUserDetail(
null == userDetail ? _self.userDetail : userDetail // ignore: cast_nullable_to_non_nullable
as GithubUserDetail,
  ));
}

/// Create a copy of SearchResultItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GithubUserDetailCopyWith<$Res> get userDetail {
  
  return $GithubUserDetailCopyWith<$Res>(_self.userDetail, (value) {
    return _then(_self.copyWith(userDetail: value));
  });
}
}

// dart format on
