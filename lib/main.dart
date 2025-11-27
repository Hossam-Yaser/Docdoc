import 'package:doc_doc/core/di/depandency_injection.dart';
import 'package:doc_doc/core/routing/app_router.dart';
import 'package:doc_doc/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(Docdoc(appRouter: AppRouter()));
}
