import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/core/networking/api_result.dart';
import 'package:doc_doc/features/home/data/repos/home_specialization_repo.dart';
import 'package:doc_doc/features/home/logic/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  final HomeSpecializationRepo _homeSpecializationRepo;

  HomeCubit(this._homeSpecializationRepo) : super(HomeStates.initial());

  void getAllSpecializations() async {
    emit(HomeStates.specializationloading());
    final response = await _homeSpecializationRepo.getAllSpecializations();
    response.when(
      success: (data) {
        emit(HomeStates.specializationSuccess(data));
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
}
