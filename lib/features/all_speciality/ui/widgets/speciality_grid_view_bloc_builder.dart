import 'package:doc_doc/features/all_speciality/logic/all_speciality_cubit.dart';
import 'package:doc_doc/features/all_speciality/logic/all_speciality_state.dart';
import 'package:doc_doc/features/all_speciality/ui/widgets/speciality_grid_view.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityGridViewBlocBuilder extends StatelessWidget {
  const SpecialityGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllSpecialityCubitCubit, AllSpecialityCubitState>(
      buildWhen: (previous, current) =>
          current is SpecialitySuccess || current is SpecialityError,

      builder: (context, state) {
        return state.when(
          initial: () => SizedBox.shrink(),
          specialitySuccess: (specializationDataList) {
            var specializationsList = specializationDataList;
            return setupSuccess(specializationsList);
          },
          specialityerror: (errorHandler) => setupError(),
        );
      },
    );
  }

  Widget setupSuccess(List<Specialization>? specializationsList) {
    return SpecialityGridView(specializationsList: specializationsList ?? []);
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
