import 'package:doc_doc/features/all_speciality/ui/widgets/speciality_grid_view_item.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:doc_doc/features/home/ui/widgets/speciality/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityGridView extends StatelessWidget {
  final List<Specialization>? specializationsList;
  const SpecialityGridView({super.key, this.specializationsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 36.h,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (_, index) {
          return SpecialityGridViewItem(
            specializationData: specializationsList![index],
          );
        },
        itemCount: 10,
      ),
    );
  }
}
