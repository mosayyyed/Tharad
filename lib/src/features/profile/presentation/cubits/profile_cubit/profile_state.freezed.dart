// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileInitial value)?  initial,TResult Function( ProfileLoading value)?  loading,TResult Function( ProfileLoaded value)?  loaded,TResult Function( ProfileUpdating value)?  updating,TResult Function( ProfileUpdated value)?  updated,TResult Function( ProfileError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial(_that);case ProfileLoading() when loading != null:
return loading(_that);case ProfileLoaded() when loaded != null:
return loaded(_that);case ProfileUpdating() when updating != null:
return updating(_that);case ProfileUpdated() when updated != null:
return updated(_that);case ProfileError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileInitial value)  initial,required TResult Function( ProfileLoading value)  loading,required TResult Function( ProfileLoaded value)  loaded,required TResult Function( ProfileUpdating value)  updating,required TResult Function( ProfileUpdated value)  updated,required TResult Function( ProfileError value)  error,}){
final _that = this;
switch (_that) {
case ProfileInitial():
return initial(_that);case ProfileLoading():
return loading(_that);case ProfileLoaded():
return loaded(_that);case ProfileUpdating():
return updating(_that);case ProfileUpdated():
return updated(_that);case ProfileError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileInitial value)?  initial,TResult? Function( ProfileLoading value)?  loading,TResult? Function( ProfileLoaded value)?  loaded,TResult? Function( ProfileUpdating value)?  updating,TResult? Function( ProfileUpdated value)?  updated,TResult? Function( ProfileError value)?  error,}){
final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial(_that);case ProfileLoading() when loading != null:
return loading(_that);case ProfileLoaded() when loaded != null:
return loaded(_that);case ProfileUpdating() when updating != null:
return updating(_that);case ProfileUpdated() when updated != null:
return updated(_that);case ProfileError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ProfileData profile)?  loaded,TResult Function( ProfileData profile)?  updating,TResult Function( ProfileData profile,  String message)?  updated,TResult Function( String message,  ProfileData? profile)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial();case ProfileLoading() when loading != null:
return loading();case ProfileLoaded() when loaded != null:
return loaded(_that.profile);case ProfileUpdating() when updating != null:
return updating(_that.profile);case ProfileUpdated() when updated != null:
return updated(_that.profile,_that.message);case ProfileError() when error != null:
return error(_that.message,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ProfileData profile)  loaded,required TResult Function( ProfileData profile)  updating,required TResult Function( ProfileData profile,  String message)  updated,required TResult Function( String message,  ProfileData? profile)  error,}) {final _that = this;
switch (_that) {
case ProfileInitial():
return initial();case ProfileLoading():
return loading();case ProfileLoaded():
return loaded(_that.profile);case ProfileUpdating():
return updating(_that.profile);case ProfileUpdated():
return updated(_that.profile,_that.message);case ProfileError():
return error(_that.message,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ProfileData profile)?  loaded,TResult? Function( ProfileData profile)?  updating,TResult? Function( ProfileData profile,  String message)?  updated,TResult? Function( String message,  ProfileData? profile)?  error,}) {final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial();case ProfileLoading() when loading != null:
return loading();case ProfileLoaded() when loaded != null:
return loaded(_that.profile);case ProfileUpdating() when updating != null:
return updating(_that.profile);case ProfileUpdated() when updated != null:
return updated(_that.profile,_that.message);case ProfileError() when error != null:
return error(_that.message,_that.profile);case _:
  return null;

}
}

}

/// @nodoc


class ProfileInitial extends ProfileState {
  const ProfileInitial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class ProfileLoading extends ProfileState {
  const ProfileLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loading()';
}


}




/// @nodoc


class ProfileLoaded extends ProfileState {
  const ProfileLoaded(this.profile): super._();
  

 final  ProfileData profile;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileLoadedCopyWith<ProfileLoaded> get copyWith => _$ProfileLoadedCopyWithImpl<ProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoaded&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'ProfileState.loaded(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $ProfileLoadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileLoadedCopyWith(ProfileLoaded value, $Res Function(ProfileLoaded) _then) = _$ProfileLoadedCopyWithImpl;
@useResult
$Res call({
 ProfileData profile
});




}
/// @nodoc
class _$ProfileLoadedCopyWithImpl<$Res>
    implements $ProfileLoadedCopyWith<$Res> {
  _$ProfileLoadedCopyWithImpl(this._self, this._then);

  final ProfileLoaded _self;
  final $Res Function(ProfileLoaded) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(ProfileLoaded(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}


}

/// @nodoc


class ProfileUpdating extends ProfileState {
  const ProfileUpdating(this.profile): super._();
  

 final  ProfileData profile;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUpdatingCopyWith<ProfileUpdating> get copyWith => _$ProfileUpdatingCopyWithImpl<ProfileUpdating>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUpdating&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'ProfileState.updating(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $ProfileUpdatingCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileUpdatingCopyWith(ProfileUpdating value, $Res Function(ProfileUpdating) _then) = _$ProfileUpdatingCopyWithImpl;
@useResult
$Res call({
 ProfileData profile
});




}
/// @nodoc
class _$ProfileUpdatingCopyWithImpl<$Res>
    implements $ProfileUpdatingCopyWith<$Res> {
  _$ProfileUpdatingCopyWithImpl(this._self, this._then);

  final ProfileUpdating _self;
  final $Res Function(ProfileUpdating) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(ProfileUpdating(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}


}

/// @nodoc


class ProfileUpdated extends ProfileState {
  const ProfileUpdated(this.profile, this.message): super._();
  

 final  ProfileData profile;
 final  String message;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUpdatedCopyWith<ProfileUpdated> get copyWith => _$ProfileUpdatedCopyWithImpl<ProfileUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUpdated&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,profile,message);

@override
String toString() {
  return 'ProfileState.updated(profile: $profile, message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfileUpdatedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileUpdatedCopyWith(ProfileUpdated value, $Res Function(ProfileUpdated) _then) = _$ProfileUpdatedCopyWithImpl;
@useResult
$Res call({
 ProfileData profile, String message
});




}
/// @nodoc
class _$ProfileUpdatedCopyWithImpl<$Res>
    implements $ProfileUpdatedCopyWith<$Res> {
  _$ProfileUpdatedCopyWithImpl(this._self, this._then);

  final ProfileUpdated _self;
  final $Res Function(ProfileUpdated) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? message = null,}) {
  return _then(ProfileUpdated(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileData,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProfileError extends ProfileState {
  const ProfileError(this.message, [this.profile]): super._();
  

 final  String message;
 final  ProfileData? profile;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileErrorCopyWith<ProfileError> get copyWith => _$ProfileErrorCopyWithImpl<ProfileError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileError&&(identical(other.message, message) || other.message == message)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,message,profile);

@override
String toString() {
  return 'ProfileState.error(message: $message, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $ProfileErrorCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileErrorCopyWith(ProfileError value, $Res Function(ProfileError) _then) = _$ProfileErrorCopyWithImpl;
@useResult
$Res call({
 String message, ProfileData? profile
});




}
/// @nodoc
class _$ProfileErrorCopyWithImpl<$Res>
    implements $ProfileErrorCopyWith<$Res> {
  _$ProfileErrorCopyWithImpl(this._self, this._then);

  final ProfileError _self;
  final $Res Function(ProfileError) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? profile = freezed,}) {
  return _then(ProfileError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileData?,
  ));
}


}

// dart format on
