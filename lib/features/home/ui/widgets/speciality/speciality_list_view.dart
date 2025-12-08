import 'dart:developer';

import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:doc_doc/features/home/logic/home_cubit.dart';
import 'package:doc_doc/features/home/ui/widgets/speciality/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListView extends StatefulWidget {
  final List<Specialization>? specializationsList;
  const DoctorsSpecialityListView({super.key, this.specializationsList});

  @override
  State<DoctorsSpecialityListView> createState() =>
      _DoctorsSpecialityListViewState();
}

class _DoctorsSpecialityListViewState extends State<DoctorsSpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widget.specializationsList?.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecializationIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                specializationId: widget.specializationsList?[index].id,
              );
            },
            child: DoctorSpecialityListViewItem(
              itemIndex: index,
              specializationData: widget.specializationsList?[index],
              selectedIndex: selectedSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
