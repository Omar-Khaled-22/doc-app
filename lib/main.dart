import 'package:flutter/material.dart';
import 'package:newflutterproject/doc_app.dart';

import 'core/DI/dependency_injection.dart';
import 'core/routing/app_router.dart';

void main() {
  setupGetIT();
  runApp( DocAPP(appRouter: AppRouter()));
}






