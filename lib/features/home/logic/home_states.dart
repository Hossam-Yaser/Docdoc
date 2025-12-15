import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.initial() = _Initial;

  //specializations states
  const factory HomeStates.specializationloading() = Specializationloading;
  const factory HomeStates.specializationSuccess(
    List<Specialization>? specializationList,
  ) = Specializationsuccess;
  const factory HomeStates.specializationerror(ErrorHandler errorHandler) =
      Specializationerror;

  //Doctors home states States
  const factory HomeStates.doctorSuccess(List<Doctor>? doctorsList) =
      DoctorSuccess;
  const factory HomeStates.doctorError(ErrorHandler errorHandler) = DoctorError;
  //Logout States
  const factory HomeStates.logoutSuccess() = LogoutSuccess;
  const factory HomeStates.logouterror() = LogoutError;
}
