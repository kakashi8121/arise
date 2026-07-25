import 'package:flutter/material.dart';

import 'router.dart';
import 'theme/app_theme.dart';

class AriseApp extends StatelessWidget {
  const AriseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ARISE',
     theme: AppTheme.light,
darkTheme: AppTheme.dark,
      routerConfig: AppRouter.router,
    );
  }
}