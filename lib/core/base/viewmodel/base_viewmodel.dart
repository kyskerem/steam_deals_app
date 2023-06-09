import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/init/navigation/navigation_service.dart';

abstract class BaseViewModel {
  ///Initilazing in every baseview layer
  late BuildContext viewModelContext;
  final navigator = NavigationService.instance;
}
