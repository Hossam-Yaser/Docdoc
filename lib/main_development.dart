import 'package:doc_doc/core/di/depandency_injection.dart';
import 'package:doc_doc/core/helpers/constants.dart';
import 'package:doc_doc/core/helpers/extentions.dart';
import 'package:doc_doc/core/helpers/shared_prefrance.dart';
import 'package:doc_doc/core/routing/app_router.dart';
import 'package:doc_doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // Fix Screenutil hiden text issue
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedinUser();
  runApp(Docdoc(appRouter: AppRouter()));
}

Future<void> checkIfLoggedinUser() async {
  isOnboardingSeen = await SharedPrefHelper.getBool(
    SharedPrefKeys.onboardingSeen,
  );
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  isLoggedinUser = !userToken.isNullOrEmpty();
  if (isLoggedinUser) {
    userName = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userName);
  }
}
