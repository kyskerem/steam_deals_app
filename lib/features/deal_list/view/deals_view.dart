// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:steam_deals_application/core/base/view/base_view.dart';
import 'package:steam_deals_application/core/enum/lottie/lotties.dart';
import 'package:steam_deals_application/core/init/navigation/navigation_service.dart';
import 'package:steam_deals_application/core/view/error_view.dart';
import 'package:steam_deals_application/features/deal_list/model/deal_model.dart';

import '../viewmodel/deals_viewmodel.dart';
import '../widgets/deal_list.dart';

class DealsView extends StatelessWidget {
  const DealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<DealsViewModel>(
      viewModel: DealsViewModel(),
      onInit: (viewModel) {
        viewModel.fetchSteamDeals();
      },
      builder: _builder,
    );
  }

  Widget _builder(
    DealsViewModel viewModel,
    BuildContext context,
    NavigationService navigator,
  ) =>
      Scaffold(
        body: Observer(
          builder: (_) {
            final dealList = viewModel.dealList;
            if (!viewModel.isError) {
              return _getView(viewModel, dealList, navigator);
            } else {
              return ErrorView(
                errorMessage: viewModel.errorMessage,
                lottiePath: Lotties.error.lottiePath,
              );
            }
          },
        ),
      );
  Widget _getView(DealsViewModel viewModel, List<DealModel> dealList,
      NavigationService navigator) {
    return viewModel.isLoading == true
        ? const Center(child: CircularProgressIndicator())
        : DealsList(
            dealList: dealList,
            viewModel: viewModel,
            navigation: navigator,
          );
  }
}
