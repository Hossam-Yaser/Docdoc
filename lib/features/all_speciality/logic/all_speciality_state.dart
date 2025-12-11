import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_speciality_state.freezed.dart';

@freezed
abstract class AllSpecialityCubitState with _$AllSpecialityCubitState {
  const factory AllSpecialityCubitState.initial() = _Initial;
  const factory AllSpecialityCubitState.specialitySuccess(
    List<Specialization>? specializationList,
  ) = SpecialitySuccess;
  const factory AllSpecialityCubitState.specialityerror(
    ErrorHandler errorHandler,
  ) = SpecialityError;
}
