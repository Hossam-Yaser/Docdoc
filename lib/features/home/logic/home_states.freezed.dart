// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates()';
}


}

/// @nodoc
class $HomeStatesCopyWith<$Res>  {
$HomeStatesCopyWith(HomeStates _, $Res Function(HomeStates) __);
}


/// Adds pattern-matching-related methods to [HomeStates].
extension HomeStatesPatterns on HomeStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Specializationloading value)?  specializationloading,TResult Function( Specializationsuccess value)?  specializationSuccess,TResult Function( Specializationerror value)?  specializationerror,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Specializationloading() when specializationloading != null:
return specializationloading(_that);case Specializationsuccess() when specializationSuccess != null:
return specializationSuccess(_that);case Specializationerror() when specializationerror != null:
return specializationerror(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Specializationloading value)  specializationloading,required TResult Function( Specializationsuccess value)  specializationSuccess,required TResult Function( Specializationerror value)  specializationerror,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Specializationloading():
return specializationloading(_that);case Specializationsuccess():
return specializationSuccess(_that);case Specializationerror():
return specializationerror(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Specializationloading value)?  specializationloading,TResult? Function( Specializationsuccess value)?  specializationSuccess,TResult? Function( Specializationerror value)?  specializationerror,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Specializationloading() when specializationloading != null:
return specializationloading(_that);case Specializationsuccess() when specializationSuccess != null:
return specializationSuccess(_that);case Specializationerror() when specializationerror != null:
return specializationerror(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationloading,TResult Function( SpecializationsResponse specializationsResponse)?  specializationSuccess,TResult Function( ErrorHandler errorHandler)?  specializationerror,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Specializationloading() when specializationloading != null:
return specializationloading();case Specializationsuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationsResponse);case Specializationerror() when specializationerror != null:
return specializationerror(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationloading,required TResult Function( SpecializationsResponse specializationsResponse)  specializationSuccess,required TResult Function( ErrorHandler errorHandler)  specializationerror,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Specializationloading():
return specializationloading();case Specializationsuccess():
return specializationSuccess(_that.specializationsResponse);case Specializationerror():
return specializationerror(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationloading,TResult? Function( SpecializationsResponse specializationsResponse)?  specializationSuccess,TResult? Function( ErrorHandler errorHandler)?  specializationerror,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Specializationloading() when specializationloading != null:
return specializationloading();case Specializationsuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationsResponse);case Specializationerror() when specializationerror != null:
return specializationerror(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeStates {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates.initial()';
}


}




/// @nodoc


class Specializationloading implements HomeStates {
  const Specializationloading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Specializationloading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates.specializationloading()';
}


}




/// @nodoc


class Specializationsuccess implements HomeStates {
  const Specializationsuccess(this.specializationsResponse);
  

 final  SpecializationsResponse specializationsResponse;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsuccessCopyWith<Specializationsuccess> get copyWith => _$SpecializationsuccessCopyWithImpl<Specializationsuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Specializationsuccess&&(identical(other.specializationsResponse, specializationsResponse) || other.specializationsResponse == specializationsResponse));
}


@override
int get hashCode => Object.hash(runtimeType,specializationsResponse);

@override
String toString() {
  return 'HomeStates.specializationSuccess(specializationsResponse: $specializationsResponse)';
}


}

/// @nodoc
abstract mixin class $SpecializationsuccessCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $SpecializationsuccessCopyWith(Specializationsuccess value, $Res Function(Specializationsuccess) _then) = _$SpecializationsuccessCopyWithImpl;
@useResult
$Res call({
 SpecializationsResponse specializationsResponse
});




}
/// @nodoc
class _$SpecializationsuccessCopyWithImpl<$Res>
    implements $SpecializationsuccessCopyWith<$Res> {
  _$SpecializationsuccessCopyWithImpl(this._self, this._then);

  final Specializationsuccess _self;
  final $Res Function(Specializationsuccess) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationsResponse = null,}) {
  return _then(Specializationsuccess(
null == specializationsResponse ? _self.specializationsResponse : specializationsResponse // ignore: cast_nullable_to_non_nullable
as SpecializationsResponse,
  ));
}


}

/// @nodoc


class Specializationerror implements HomeStates {
  const Specializationerror(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationerrorCopyWith<Specializationerror> get copyWith => _$SpecializationerrorCopyWithImpl<Specializationerror>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Specializationerror&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeStates.specializationerror(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $SpecializationerrorCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $SpecializationerrorCopyWith(Specializationerror value, $Res Function(Specializationerror) _then) = _$SpecializationerrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$SpecializationerrorCopyWithImpl<$Res>
    implements $SpecializationerrorCopyWith<$Res> {
  _$SpecializationerrorCopyWithImpl(this._self, this._then);

  final Specializationerror _self;
  final $Res Function(Specializationerror) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(Specializationerror(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
