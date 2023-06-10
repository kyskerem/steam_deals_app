import 'package:flutter/material.dart';

@immutable
class NavigationService {
  const NavigationService._init();

  static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  static const NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;
  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  Future<Object?>? pushNamed(String route, {Object? data}) =>
      _navigatorKey.currentState?.pushNamed(route, arguments: data);

  Future<Widget?>? push(
    Widget view,
  ) =>
      _navigatorKey.currentState
          ?.push(MaterialPageRoute<Widget>(builder: (context) => view));
}
