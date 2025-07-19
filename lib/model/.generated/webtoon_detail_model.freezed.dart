// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../webtoon_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebtoonDetailModel {

 String get id; String get title; String get provider; List<String> get updateDays; String get url; List<String> get thumbnail; bool get isEnd; bool get isFree; bool get isUpdated; int get ageGrade; int? get freeWaitHour; List<String> get authors;
/// Create a copy of WebtoonDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebtoonDetailModelCopyWith<WebtoonDetailModel> get copyWith => _$WebtoonDetailModelCopyWithImpl<WebtoonDetailModel>(this as WebtoonDetailModel, _$identity);

  /// Serializes this WebtoonDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebtoonDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other.updateDays, updateDays)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.thumbnail, thumbnail)&&(identical(other.isEnd, isEnd) || other.isEnd == isEnd)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.isUpdated, isUpdated) || other.isUpdated == isUpdated)&&(identical(other.ageGrade, ageGrade) || other.ageGrade == ageGrade)&&(identical(other.freeWaitHour, freeWaitHour) || other.freeWaitHour == freeWaitHour)&&const DeepCollectionEquality().equals(other.authors, authors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,provider,const DeepCollectionEquality().hash(updateDays),url,const DeepCollectionEquality().hash(thumbnail),isEnd,isFree,isUpdated,ageGrade,freeWaitHour,const DeepCollectionEquality().hash(authors));

@override
String toString() {
  return 'WebtoonDetailModel(id: $id, title: $title, provider: $provider, updateDays: $updateDays, url: $url, thumbnail: $thumbnail, isEnd: $isEnd, isFree: $isFree, isUpdated: $isUpdated, ageGrade: $ageGrade, freeWaitHour: $freeWaitHour, authors: $authors)';
}


}

/// @nodoc
abstract mixin class $WebtoonDetailModelCopyWith<$Res>  {
  factory $WebtoonDetailModelCopyWith(WebtoonDetailModel value, $Res Function(WebtoonDetailModel) _then) = _$WebtoonDetailModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String provider, List<String> updateDays, String url, List<String> thumbnail, bool isEnd, bool isFree, bool isUpdated, int ageGrade, int? freeWaitHour, List<String> authors
});




}
/// @nodoc
class _$WebtoonDetailModelCopyWithImpl<$Res>
    implements $WebtoonDetailModelCopyWith<$Res> {
  _$WebtoonDetailModelCopyWithImpl(this._self, this._then);

  final WebtoonDetailModel _self;
  final $Res Function(WebtoonDetailModel) _then;

/// Create a copy of WebtoonDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? provider = null,Object? updateDays = null,Object? url = null,Object? thumbnail = null,Object? isEnd = null,Object? isFree = null,Object? isUpdated = null,Object? ageGrade = null,Object? freeWaitHour = freezed,Object? authors = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,updateDays: null == updateDays ? _self.updateDays : updateDays // ignore: cast_nullable_to_non_nullable
as List<String>,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as List<String>,isEnd: null == isEnd ? _self.isEnd : isEnd // ignore: cast_nullable_to_non_nullable
as bool,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,isUpdated: null == isUpdated ? _self.isUpdated : isUpdated // ignore: cast_nullable_to_non_nullable
as bool,ageGrade: null == ageGrade ? _self.ageGrade : ageGrade // ignore: cast_nullable_to_non_nullable
as int,freeWaitHour: freezed == freeWaitHour ? _self.freeWaitHour : freeWaitHour // ignore: cast_nullable_to_non_nullable
as int?,authors: null == authors ? _self.authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [WebtoonDetailModel].
extension WebtoonDetailModelPatterns on WebtoonDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebtoonDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebtoonDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebtoonDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _WebtoonDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebtoonDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _WebtoonDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String provider,  List<String> updateDays,  String url,  List<String> thumbnail,  bool isEnd,  bool isFree,  bool isUpdated,  int ageGrade,  int? freeWaitHour,  List<String> authors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebtoonDetailModel() when $default != null:
return $default(_that.id,_that.title,_that.provider,_that.updateDays,_that.url,_that.thumbnail,_that.isEnd,_that.isFree,_that.isUpdated,_that.ageGrade,_that.freeWaitHour,_that.authors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String provider,  List<String> updateDays,  String url,  List<String> thumbnail,  bool isEnd,  bool isFree,  bool isUpdated,  int ageGrade,  int? freeWaitHour,  List<String> authors)  $default,) {final _that = this;
switch (_that) {
case _WebtoonDetailModel():
return $default(_that.id,_that.title,_that.provider,_that.updateDays,_that.url,_that.thumbnail,_that.isEnd,_that.isFree,_that.isUpdated,_that.ageGrade,_that.freeWaitHour,_that.authors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String provider,  List<String> updateDays,  String url,  List<String> thumbnail,  bool isEnd,  bool isFree,  bool isUpdated,  int ageGrade,  int? freeWaitHour,  List<String> authors)?  $default,) {final _that = this;
switch (_that) {
case _WebtoonDetailModel() when $default != null:
return $default(_that.id,_that.title,_that.provider,_that.updateDays,_that.url,_that.thumbnail,_that.isEnd,_that.isFree,_that.isUpdated,_that.ageGrade,_that.freeWaitHour,_that.authors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebtoonDetailModel implements WebtoonDetailModel {
  const _WebtoonDetailModel({this.id = '', this.title = '', this.provider = '', final  List<String> updateDays = const [], this.url = '', final  List<String> thumbnail = const [], this.isEnd = false, this.isFree = false, this.isUpdated = false, this.ageGrade = 0, this.freeWaitHour = null, final  List<String> authors = const []}): _updateDays = updateDays,_thumbnail = thumbnail,_authors = authors;
  factory _WebtoonDetailModel.fromJson(Map<String, dynamic> json) => _$WebtoonDetailModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String provider;
 final  List<String> _updateDays;
@override@JsonKey() List<String> get updateDays {
  if (_updateDays is EqualUnmodifiableListView) return _updateDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_updateDays);
}

@override@JsonKey() final  String url;
 final  List<String> _thumbnail;
@override@JsonKey() List<String> get thumbnail {
  if (_thumbnail is EqualUnmodifiableListView) return _thumbnail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_thumbnail);
}

@override@JsonKey() final  bool isEnd;
@override@JsonKey() final  bool isFree;
@override@JsonKey() final  bool isUpdated;
@override@JsonKey() final  int ageGrade;
@override@JsonKey() final  int? freeWaitHour;
 final  List<String> _authors;
@override@JsonKey() List<String> get authors {
  if (_authors is EqualUnmodifiableListView) return _authors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_authors);
}


/// Create a copy of WebtoonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebtoonDetailModelCopyWith<_WebtoonDetailModel> get copyWith => __$WebtoonDetailModelCopyWithImpl<_WebtoonDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebtoonDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebtoonDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other._updateDays, _updateDays)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._thumbnail, _thumbnail)&&(identical(other.isEnd, isEnd) || other.isEnd == isEnd)&&(identical(other.isFree, isFree) || other.isFree == isFree)&&(identical(other.isUpdated, isUpdated) || other.isUpdated == isUpdated)&&(identical(other.ageGrade, ageGrade) || other.ageGrade == ageGrade)&&(identical(other.freeWaitHour, freeWaitHour) || other.freeWaitHour == freeWaitHour)&&const DeepCollectionEquality().equals(other._authors, _authors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,provider,const DeepCollectionEquality().hash(_updateDays),url,const DeepCollectionEquality().hash(_thumbnail),isEnd,isFree,isUpdated,ageGrade,freeWaitHour,const DeepCollectionEquality().hash(_authors));

@override
String toString() {
  return 'WebtoonDetailModel(id: $id, title: $title, provider: $provider, updateDays: $updateDays, url: $url, thumbnail: $thumbnail, isEnd: $isEnd, isFree: $isFree, isUpdated: $isUpdated, ageGrade: $ageGrade, freeWaitHour: $freeWaitHour, authors: $authors)';
}


}

/// @nodoc
abstract mixin class _$WebtoonDetailModelCopyWith<$Res> implements $WebtoonDetailModelCopyWith<$Res> {
  factory _$WebtoonDetailModelCopyWith(_WebtoonDetailModel value, $Res Function(_WebtoonDetailModel) _then) = __$WebtoonDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String provider, List<String> updateDays, String url, List<String> thumbnail, bool isEnd, bool isFree, bool isUpdated, int ageGrade, int? freeWaitHour, List<String> authors
});




}
/// @nodoc
class __$WebtoonDetailModelCopyWithImpl<$Res>
    implements _$WebtoonDetailModelCopyWith<$Res> {
  __$WebtoonDetailModelCopyWithImpl(this._self, this._then);

  final _WebtoonDetailModel _self;
  final $Res Function(_WebtoonDetailModel) _then;

/// Create a copy of WebtoonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? provider = null,Object? updateDays = null,Object? url = null,Object? thumbnail = null,Object? isEnd = null,Object? isFree = null,Object? isUpdated = null,Object? ageGrade = null,Object? freeWaitHour = freezed,Object? authors = null,}) {
  return _then(_WebtoonDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,updateDays: null == updateDays ? _self._updateDays : updateDays // ignore: cast_nullable_to_non_nullable
as List<String>,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self._thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as List<String>,isEnd: null == isEnd ? _self.isEnd : isEnd // ignore: cast_nullable_to_non_nullable
as bool,isFree: null == isFree ? _self.isFree : isFree // ignore: cast_nullable_to_non_nullable
as bool,isUpdated: null == isUpdated ? _self.isUpdated : isUpdated // ignore: cast_nullable_to_non_nullable
as bool,ageGrade: null == ageGrade ? _self.ageGrade : ageGrade // ignore: cast_nullable_to_non_nullable
as int,freeWaitHour: freezed == freeWaitHour ? _self.freeWaitHour : freeWaitHour // ignore: cast_nullable_to_non_nullable
as int?,authors: null == authors ? _self._authors : authors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
