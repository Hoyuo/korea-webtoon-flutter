// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../webtoon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebtoonModel {

 String get id; String get title; List<String> get thumbnail;
/// Create a copy of WebtoonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebtoonModelCopyWith<WebtoonModel> get copyWith => _$WebtoonModelCopyWithImpl<WebtoonModel>(this as WebtoonModel, _$identity);

  /// Serializes this WebtoonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebtoonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(thumbnail));

@override
String toString() {
  return 'WebtoonModel(id: $id, title: $title, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $WebtoonModelCopyWith<$Res>  {
  factory $WebtoonModelCopyWith(WebtoonModel value, $Res Function(WebtoonModel) _then) = _$WebtoonModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<String> thumbnail
});




}
/// @nodoc
class _$WebtoonModelCopyWithImpl<$Res>
    implements $WebtoonModelCopyWith<$Res> {
  _$WebtoonModelCopyWithImpl(this._self, this._then);

  final WebtoonModel _self;
  final $Res Function(WebtoonModel) _then;

/// Create a copy of WebtoonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [WebtoonModel].
extension WebtoonModelPatterns on WebtoonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebtoonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebtoonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebtoonModel value)  $default,){
final _that = this;
switch (_that) {
case _WebtoonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebtoonModel value)?  $default,){
final _that = this;
switch (_that) {
case _WebtoonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<String> thumbnail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebtoonModel() when $default != null:
return $default(_that.id,_that.title,_that.thumbnail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<String> thumbnail)  $default,) {final _that = this;
switch (_that) {
case _WebtoonModel():
return $default(_that.id,_that.title,_that.thumbnail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<String> thumbnail)?  $default,) {final _that = this;
switch (_that) {
case _WebtoonModel() when $default != null:
return $default(_that.id,_that.title,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebtoonModel implements WebtoonModel {
  const _WebtoonModel({this.id = '', this.title = '', final  List<String> thumbnail = const []}): _thumbnail = thumbnail;
  factory _WebtoonModel.fromJson(Map<String, dynamic> json) => _$WebtoonModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
 final  List<String> _thumbnail;
@override@JsonKey() List<String> get thumbnail {
  if (_thumbnail is EqualUnmodifiableListView) return _thumbnail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_thumbnail);
}


/// Create a copy of WebtoonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebtoonModelCopyWith<_WebtoonModel> get copyWith => __$WebtoonModelCopyWithImpl<_WebtoonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebtoonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebtoonModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._thumbnail, _thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_thumbnail));

@override
String toString() {
  return 'WebtoonModel(id: $id, title: $title, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$WebtoonModelCopyWith<$Res> implements $WebtoonModelCopyWith<$Res> {
  factory _$WebtoonModelCopyWith(_WebtoonModel value, $Res Function(_WebtoonModel) _then) = __$WebtoonModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<String> thumbnail
});




}
/// @nodoc
class __$WebtoonModelCopyWithImpl<$Res>
    implements _$WebtoonModelCopyWith<$Res> {
  __$WebtoonModelCopyWithImpl(this._self, this._then);

  final _WebtoonModel _self;
  final $Res Function(_WebtoonModel) _then;

/// Create a copy of WebtoonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? thumbnail = null,}) {
  return _then(_WebtoonModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self._thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
