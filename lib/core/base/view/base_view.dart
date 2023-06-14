import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../enum/lottie/lotties.dart';
import '../../init/navigation/navigation_service.dart';
import '../../view/error_view.dart';
import '../viewmodel/base_viewmodel.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  const BaseView({
    required this.viewModel,
    required this.builder,
    super.key,
    this.onDispose,
    this.onInit,
  });
  final T viewModel;
  final VoidCallback? onDispose;
  final void Function(T viewModel)? onInit;
  final Widget Function(
    T viewModel,
    BuildContext context,
    NavigationService navigator,
  ) builder;
  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  final navigator = NavigationService.instance;
  final Connectivity _connectivity = Connectivity();
  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  void _updateConnectionStatus(ConnectivityResult status) {
    setState(() {
      _connectionStatus = status;
    });
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print("Couldn't check connectivity status error: $e");
      return;
    }
    if (!mounted) {
      return Future.value();
    }
    return _updateConnectionStatus(result);
  }

  @override
  void initState() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    initConnectivity();
    super.initState();
    if (widget.onInit == null) return;
    widget.onInit!(widget.viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    _connectivitySubscription.cancel();
    if (widget.onDispose == null) return;
    widget.onDispose!();
  }

  @override
  Widget build(BuildContext context) {
    widget.viewModel.viewModelContext = context;
    if (_connectionStatus == ConnectivityResult.none) {
      return ErrorView(
        errorMessage: 'NO INTERNET CONNECTION',
        lottiePath: Lotties.error.lottiePath,
      );
    } else {
      return widget.builder(widget.viewModel, context, navigator);
    }
  }
}
