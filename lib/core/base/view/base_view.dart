import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/base/viewmodel/base_viewmodel.dart';

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
  final Widget Function(T viewModel, BuildContext context) builder;
  @override
  State<BaseView> createState() => _BaseViewState<T>();
}

class _BaseViewState<T> extends State<BaseView> {
  @override
  void initState() {
    if (widget.onInit == null) return;
    widget.onInit!(widget.viewModel);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onDispose == null) return;
    widget.onDispose!();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.viewModel.viewModelContext = context;
    return widget.builder(widget.viewModel, context);
  }
}
