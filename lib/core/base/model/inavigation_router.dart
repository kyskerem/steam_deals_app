import 'package:flutter/material.dart';

@immutable
abstract class INavigationRouter {
  Route<Widget> onGenerateRoute(RouteSettings settings);
}
