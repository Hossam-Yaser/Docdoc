import 'package:doc_doc/core/networking/api_error_handler.dart';
import 'package:doc_doc/core/networking/api_result.dart';
import 'package:doc_doc/features/all_speciality/logic/all_speciality_state.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:doc_doc/features/home/data/repos/home_specialization_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class AllSpecialityCubitCubit extends Cubit<AllSpecialityCubitState> {
  final HomeSpecializationRepo _homeSpecializationRepo;
  List<Specialization>? specializationList = [];
  AllSpecialityCubitCubit(this._homeSpecializationRepo)
    : super(AllSpecialityCubitState.initial());
  void getAllSpecializations() async {
    final response = await _homeSpecializationRepo.getAllSpecializations();
    response.when(
      success: (data) {
        specializationList = data.data;
        emit(AllSpecialityCubitState.specialitySuccess(specializationList));
      },
      failure: (error) {
        emit(
          AllSpecialityCubitState.specialityerror(
            ErrorHandler.handle(ErrorHandler.handle(error)),
          ),
        );
      },
    );
  }
}
