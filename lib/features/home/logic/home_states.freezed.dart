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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Specializationloading value)?  specializationloading,TResult Function( Specializationsuccess value)?  specializationSuccess,TResult Function( Specializationerror value)?  specializationerror,TResult Function( DoctorSuccess value)?  doctorSuccess,TResult Function( DoctorError value)?  doctorError,TResult Function( LogoutSuccess value)?  logoutSuccess,TResult Function( LogoutError value)?  logouterror,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Specializationloading() when specializationloading != null:
return specializationloading(_that);case Specializationsuccess() when specializationSuccess != null:
return specializationSuccess(_that);case Specializationerror() when specializationerror != null:
return specializationerror(_that);case DoctorSuccess() when doctorSuccess != null:
return doctorSuccess(_that);case DoctorError() when doctorError != null:
return doctorError(_that);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that);case LogoutError() when logouterror != null:
return logouterror(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Specializationloading value)  specializationloading,required TResult Function( Specializationsuccess value)  specializationSuccess,required TResult Function( Specializationerror value)  specializationerror,required TResult Function( DoctorSuccess value)  doctorSuccess,required TResult Function( DoctorError value)  doctorError,required TResult Function( LogoutSuccess value)  logoutSuccess,required TResult Function( LogoutError value)  logouterror,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Specializationloading():
return specializationloading(_that);case Specializationsuccess():
return specializationSuccess(_that);case Specializationerror():
return specializationerror(_that);case DoctorSuccess():
return doctorSuccess(_that);case DoctorError():
return doctorError(_that);case LogoutSuccess():
return logoutSuccess(_that);case LogoutError():
return logouterror(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Specializationloading value)?  specializationloading,TResult? Function( Specializationsuccess value)?  specializationSuccess,TResult? Function( Specializationerror value)?  specializationerror,TResult? Function( DoctorSuccess value)?  doctorSuccess,TResult? Function( DoctorError value)?  doctorError,TResult? Function( LogoutSuccess value)?  logoutSuccess,TResult? Function( LogoutError value)?  logouterror,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Specializationloading() when specializationloading != null:
return specializationloading(_that);case Specializationsuccess() when specializationSuccess != null:
return specializationSuccess(_that);case Specializationerror() when specializationerror != null:
return specializationerror(_that);case DoctorSuccess() when doctorSuccess != null:
return doctorSuccess(_that);case DoctorError() when doctorError != null:
return doctorError(_that);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that);case LogoutError() when logouterror != null:
return logouterror(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationloading,TResult Function( List<Specialization>? specializationList)?  specializationSuccess,TResult Function( ErrorHandler errorHandler)?  specializationerror,TResult Function( List<Doctor>? doctorsList)?  doctorSuccess,TResult Function( ErrorHandler errorHandler)?  doctorError,TResult Function()?  logoutSuccess,TResult Function()?  logouterror,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Specializationloading() when specializationloading != null:
return specializationloading();case Specializationsuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationList);case Specializationerror() when specializationerror != null:
return specializationerror(_that.errorHandler);case DoctorSuccess() when doctorSuccess != null:
return doctorSuccess(_that.doctorsList);case DoctorError() when doctorError != null:
return doctorError(_that.errorHandler);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess();case LogoutError() when logouterror != null:
return logouterror();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationloading,required TResult Function( List<Specialization>? specializationList)  specializationSuccess,required TResult Function( ErrorHandler errorHandler)  specializationerror,required TResult Function( List<Doctor>? doctorsList)  doctorSuccess,required TResult Function( ErrorHandler errorHandler)  doctorError,required TResult Function()  logoutSuccess,required TResult Function()  logouterror,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Specializationloading():
return specializationloading();case Specializationsuccess():
return specializationSuccess(_that.specializationList);case Specializationerror():
return specializationerror(_that.errorHandler);case DoctorSuccess():
return doctorSuccess(_that.doctorsList);case DoctorError():
return doctorError(_that.errorHandler);case LogoutSuccess():
return logoutSuccess();case LogoutError():
return logouterror();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationloading,TResult? Function( List<Specialization>? specializationList)?  specializationSuccess,TResult? Function( ErrorHandler errorHandler)?  specializationerror,TResult? Function( List<Doctor>? doctorsList)?  doctorSuccess,TResult? Function( ErrorHandler errorHandler)?  doctorError,TResult? Function()?  logoutSuccess,TResult? Function()?  logouterror,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Specializationloading() when specializationloading != null:
return specializationloading();case Specializationsuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationList);case Specializationerror() when specializationerror != null:
return specializationerror(_that.errorHandler);case DoctorSuccess() when doctorSuccess != null:
return doctorSuccess(_that.doctorsList);case DoctorError() when doctorError != null:
return doctorError(_that.errorHandler);case LogoutSuccess() when logoutSuccess != null:
return logoutSuccess();case LogoutError() when logouterror != null:
return logouterror();case _:
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
  const Specializationsuccess(final  List<Specialization>? specializationList): _specializationList = specializationList;
  

 final  List<Specialization>? _specializationList;
 List<Specialization>? get specializationList {
  final value = _specializationList;
  if (value == null) return null;
  if (_specializationList is EqualUnmodifiableListView) return _specializationList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsuccessCopyWith<Specializationsuccess> get copyWith => _$SpecializationsuccessCopyWithImpl<Specializationsuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Specializationsuccess&&const DeepCollectionEquality().equals(other._specializationList, _specializationList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationList));

@override
String toString() {
  return 'HomeStates.specializationSuccess(specializationList: $specializationList)';
}


}

/// @nodoc
abstract mixin class $SpecializationsuccessCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $SpecializationsuccessCopyWith(Specializationsuccess value, $Res Function(Specializationsuccess) _then) = _$SpecializationsuccessCopyWithImpl;
@useResult
$Res call({
 List<Specialization>? specializationList
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
@pragma('vm:prefer-inline') $Res call({Object? specializationList = freezed,}) {
  return _then(Specializationsuccess(
freezed == specializationList ? _self._specializationList : specializationList // ignore: cast_nullable_to_non_nullable
as List<Specialization>?,
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

/// @nodoc


class DoctorSuccess implements HomeStates {
  const DoctorSuccess(final  List<Doctor>? doctorsList): _doctorsList = doctorsList;
  

 final  List<Doctor>? _doctorsList;
 List<Doctor>? get doctorsList {
  final value = _doctorsList;
  if (value == null) return null;
  if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorSuccessCopyWith<DoctorSuccess> get copyWith => _$DoctorSuccessCopyWithImpl<DoctorSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorSuccess&&const DeepCollectionEquality().equals(other._doctorsList, _doctorsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsList));

@override
String toString() {
  return 'HomeStates.doctorSuccess(doctorsList: $doctorsList)';
}


}

/// @nodoc
abstract mixin class $DoctorSuccessCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $DoctorSuccessCopyWith(DoctorSuccess value, $Res Function(DoctorSuccess) _then) = _$DoctorSuccessCopyWithImpl;
@useResult
$Res call({
 List<Doctor>? doctorsList
});




}
/// @nodoc
class _$DoctorSuccessCopyWithImpl<$Res>
    implements $DoctorSuccessCopyWith<$Res> {
  _$DoctorSuccessCopyWithImpl(this._self, this._then);

  final DoctorSuccess _self;
  final $Res Function(DoctorSuccess) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsList = freezed,}) {
  return _then(DoctorSuccess(
freezed == doctorsList ? _self._doctorsList : doctorsList // ignore: cast_nullable_to_non_nullable
as List<Doctor>?,
  ));
}


}

/// @nodoc


class DoctorError implements HomeStates {
  const DoctorError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorErrorCopyWith<DoctorError> get copyWith => _$DoctorErrorCopyWithImpl<DoctorError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeStates.doctorError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $DoctorErrorCopyWith<$Res> implements $HomeStatesCopyWith<$Res> {
  factory $DoctorErrorCopyWith(DoctorError value, $Res Function(DoctorError) _then) = _$DoctorErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$DoctorErrorCopyWithImpl<$Res>
    implements $DoctorErrorCopyWith<$Res> {
  _$DoctorErrorCopyWithImpl(this._self, this._then);

  final DoctorError _self;
  final $Res Function(DoctorError) _then;

/// Create a copy of HomeStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(DoctorError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class LogoutSuccess implements HomeStates {
  const LogoutSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates.logoutSuccess()';
}


}




/// @nodoc


class LogoutError implements HomeStates {
  const LogoutError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeStates.logouterror()';
}


}




// dart format on
