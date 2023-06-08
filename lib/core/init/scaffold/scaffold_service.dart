import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/base/error/ierror.dart';
import 'package:steam_deals_application/core/widgets/snackbar/toast.dart';

@immutable
class ScaffoldService {
  const ScaffoldService._init();
  static const instance = ScaffoldService._init();
  static final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  void showErrorSnackbar(IError error) {
    scaffoldKey.currentState?.showSnackBar(Toast(content: Text(error.message)));
  }
}
