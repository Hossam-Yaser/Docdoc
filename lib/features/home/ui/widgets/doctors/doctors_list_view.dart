import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:doc_doc/features/home/data/models/home_specializations_response_model.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors/doctors_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  final dynamic doctorsList;
  const DoctorsListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: doctorsList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctor: doctorsList[index]);
        },
      ),
    );
  }
}
