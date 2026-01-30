// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LayoutState {

 int get selectedIndex;
/// Create a copy of LayoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LayoutStateCopyWith<LayoutState> get copyWith => _$LayoutStateCopyWithImpl<LayoutState>(this as LayoutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LayoutState&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'LayoutState(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $LayoutStateCopyWith<$Res>  {
  factory $LayoutStateCopyWith(LayoutState value, $Res Function(LayoutState) _then) = _$LayoutStateCopyWithImpl;
@useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class _$LayoutStateCopyWithImpl<$Res>
    implements $LayoutStateCopyWith<$Res> {
  _$LayoutStateCopyWithImpl(this._self, this._then);

  final LayoutState _self;
  final $Res Function(LayoutState) _then;

/// Create a copy of LayoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedIndex = null,}) {
  return _then(_self.copyWith(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LayoutState].
extension LayoutStatePatterns on LayoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LayoutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LayoutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LayoutState value)  $default,){
final _that = this;
switch (_that) {
case _LayoutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LayoutState value)?  $default,){
final _that = this;
switch (_that) {
case _LayoutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int selectedIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LayoutState() when $default != null:
return $default(_that.selectedIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int selectedIndex)  $default,) {final _that = this;
switch (_that) {
case _LayoutState():
return $default(_that.selectedIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int selectedIndex)?  $default,) {final _that = this;
switch (_that) {
case _LayoutState() when $default != null:
return $default(_that.selectedIndex);case _:
  return null;

}
}

}

/// @nodoc


class _LayoutState implements LayoutState {
  const _LayoutState({this.selectedIndex = 0});
  

@override@JsonKey() final  int selectedIndex;

/// Create a copy of LayoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LayoutStateCopyWith<_LayoutState> get copyWith => __$LayoutStateCopyWithImpl<_LayoutState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LayoutState&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'LayoutState(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class _$LayoutStateCopyWith<$Res> implements $LayoutStateCopyWith<$Res> {
  factory _$LayoutStateCopyWith(_LayoutState value, $Res Function(_LayoutState) _then) = __$LayoutStateCopyWithImpl;
@override @useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class __$LayoutStateCopyWithImpl<$Res>
    implements _$LayoutStateCopyWith<$Res> {
  __$LayoutStateCopyWithImpl(this._self, this._then);

  final _LayoutState _self;
  final $Res Function(_LayoutState) _then;

/// Create a copy of LayoutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,}) {
  return _then(_LayoutState(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
