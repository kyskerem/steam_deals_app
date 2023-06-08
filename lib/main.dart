import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/init/navigation/navigation_router.dart';
import 'package:steam_deals_application/core/init/navigation/navigation_service.dart';
import 'package:steam_deals_application/core/init/scaffold/scaffold_service.dart';

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
