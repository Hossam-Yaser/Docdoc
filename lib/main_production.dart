import 'package:doc_doc/core/di/depandency_injection.dart';
import 'package:doc_doc/core/routing/app_router.dart';
import 'package:doc_doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  // Fix Screenutil hiden text issue
  await ScreenUtil.ensureScreenSize();
  runApp(Docdoc(appRouter: AppRouter()));
}
