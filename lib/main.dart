import 'package:flutter/material.dart';

import 'core/init/navigation/navigation_router.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/scaffold/scaffold_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: ScaffoldService.scaffoldKey,
      onGenerateRoute: NavigationRouter.router.onGenerateRoute,
      navigatorKey: NavigationService.navigatorKey,
    );
  }
}
