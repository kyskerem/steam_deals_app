import 'package:flutter/material.dart';

abstract class BaseViewModel {
  ///Initilazing in every baseview layer
  late BuildContext viewModelContext;
  bool isLoading = false;
  bool isError = false;
  String errorMessage = '';
  void changeLoading() {
    isLoading = !isLoading;
  }

  void showError(String errorMessage) {
    isError = true;
    errorMessage = errorMessage;
  }
}
