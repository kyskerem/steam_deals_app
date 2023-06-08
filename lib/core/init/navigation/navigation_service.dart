import 'package:flutter/material.dart';

@immutable
class NavigationService {
  const NavigationService._init();

  static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  static const NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;
  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
}
