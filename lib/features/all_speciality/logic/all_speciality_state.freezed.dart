// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_speciality_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllSpecialityCubitState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllSpecialityCubitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllSpecialityCubitState()';
}


}

/// @nodoc
class $AllSpecialityCubitStateCopyWith<$Res>  {
$AllSpecialityCubitStateCopyWith(AllSpecialityCubitState _, $Res Function(AllSpecialityCubitState) __);
}


/// Adds pattern-matching-related methods to [AllSpecialityCubitState].
extension AllSpecialityCubitStatePatterns on AllSpecialityCubitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecialitySuccess value)?  specialitySuccess,TResult Function( SpecialityError value)?  specialityerror,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecialitySuccess() when specialitySuccess != null:
return specialitySuccess(_that);case SpecialityError() when specialityerror != null:
return specialityerror(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecialitySuccess value)  specialitySuccess,required TResult Function( SpecialityError value)  specialityerror,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecialitySuccess():
return specialitySuccess(_that);case SpecialityError():
return specialityerror(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecialitySuccess value)?  specialitySuccess,TResult? Function( SpecialityError value)?  specialityerror,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecialitySuccess() when specialitySuccess != null:
return specialitySuccess(_that);case SpecialityError() when specialityerror != null:
return specialityerror(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Specialization>? specializationList)?  specialitySuccess,TResult Function( ErrorHandler errorHandler)?  specialityerror,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecialitySuccess() when specialitySuccess != null:
return specialitySuccess(_that.specializationList);case SpecialityError() when specialityerror != null:
return specialityerror(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Specialization>? specializationList)  specialitySuccess,required TResult Function( ErrorHandler errorHandler)  specialityerror,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecialitySuccess():
return specialitySuccess(_that.specializationList);case SpecialityError():
return specialityerror(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Specialization>? specializationList)?  specialitySuccess,TResult? Function( ErrorHandler errorHandler)?  specialityerror,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecialitySuccess() when specialitySuccess != null:
return specialitySuccess(_that.specializationList);case SpecialityError() when specialityerror != null:
return specialityerror(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AllSpecialityCubitState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllSpecialityCubitState.initial()';
}


}




/// @nodoc


class SpecialitySuccess implements AllSpecialityCubitState {
  const SpecialitySuccess(final  List<Specialization>? specializationList): _specializationList = specializationList;
  

 final  List<Specialization>? _specializationList;
 List<Specialization>? get specializationList {
  final value = _specializationList;
  if (value == null) return null;
  if (_specializationList is EqualUnmodifiableListView) return _specializationList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AllSpecialityCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialitySuccessCopyWith<SpecialitySuccess> get copyWith => _$SpecialitySuccessCopyWithImpl<SpecialitySuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialitySuccess&&const DeepCollectionEquality().equals(other._specializationList, _specializationList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationList));

@override
String toString() {
  return 'AllSpecialityCubitState.specialitySuccess(specializationList: $specializationList)';
}


}

/// @nodoc
abstract mixin class $SpecialitySuccessCopyWith<$Res> implements $AllSpecialityCubitStateCopyWith<$Res> {
  factory $SpecialitySuccessCopyWith(SpecialitySuccess value, $Res Function(SpecialitySuccess) _then) = _$SpecialitySuccessCopyWithImpl;
@useResult
$Res call({
 List<Specialization>? specializationList
});




}
/// @nodoc
class _$SpecialitySuccessCopyWithImpl<$Res>
    implements $SpecialitySuccessCopyWith<$Res> {
  _$SpecialitySuccessCopyWithImpl(this._self, this._then);

  final SpecialitySuccess _self;
  final $Res Function(SpecialitySuccess) _then;

/// Create a copy of AllSpecialityCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationList = freezed,}) {
  return _then(SpecialitySuccess(
freezed == specializationList ? _self._specializationList : specializationList // ignore: cast_nullable_to_non_nullable
as List<Specialization>?,
  ));
}


}

/// @nodoc


class SpecialityError implements AllSpecialityCubitState {
  const SpecialityError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of AllSpecialityCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialityErrorCopyWith<SpecialityError> get copyWith => _$SpecialityErrorCopyWithImpl<SpecialityError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialityError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'AllSpecialityCubitState.specialityerror(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $SpecialityErrorCopyWith<$Res> implements $AllSpecialityCubitStateCopyWith<$Res> {
  factory $SpecialityErrorCopyWith(SpecialityError value, $Res Function(SpecialityError) _then) = _$SpecialityErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$SpecialityErrorCopyWithImpl<$Res>
    implements $SpecialityErrorCopyWith<$Res> {
  _$SpecialityErrorCopyWithImpl(this._self, this._then);

  final SpecialityError _self;
  final $Res Function(SpecialityError) _then;

/// Create a copy of AllSpecialityCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(SpecialityError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
