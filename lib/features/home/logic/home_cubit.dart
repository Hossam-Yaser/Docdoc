import 'package:doc_doc/core/helpers/constants.dart';
import 'package:doc_doc/core/helpers/extentions.dart';
import 'package:doc_doc/core/helpers/shared_prefrance.dart';
import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/core/networking/api_result.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:doc_doc/features/home/data/repos/home_specialization_repo.dart';
import 'package:doc_doc/features/home/logic/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  final HomeSpecializationRepo _homeSpecializationRepo;
  List<Specialization>? specializationList = [];

  HomeCubit(this._homeSpecializationRepo) : super(HomeStates.initial());

  void getAllSpecializations() async {
    emit(HomeStates.specializationloading());
    final response = await _homeSpecializationRepo.getAllSpecializations();
    response.when(
      success: (data) {
        specializationList = data.data;
        emit(HomeStates.specializationSuccess(specializationList));
      },
      failure: (error) {
        emit(
          HomeStates.specializationerror(
            ErrorHandler.handle(ErrorHandler.handle(error)),
          ),
        );
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctor>? doctorsList = filterSpecializationById(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeStates.doctorSuccess(doctorsList));
    } else {
      emit(HomeStates.doctorError(ErrorHandler.handle("No Doctors Found")));
    }
  }

  List<Doctor>? filterSpecializationById(specializationId) {
    return specializationList
        ?.firstWhere((specialization) => specialization.id == specializationId)
        .doctors;
  }

  void emitLogoutStates() async {
    final response = await _homeSpecializationRepo.logOut();
    response.when(
      success: (_) async {
        await SharedPrefHelper.clearAllSecuredData();
        emit(HomeStates.logoutSuccess());
      },
      failure: (_) {
        emit(HomeStates.logouterror());
      },
    );
  }
}
