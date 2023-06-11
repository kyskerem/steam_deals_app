import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:steam_deals_application/features/deal_lookup/model/deal_lookup_model.dart';

import '../../../core/base/view/base_view.dart';
import '../../../core/enum/lottie/lotties.dart';
import '../../../core/view/error_view.dart';
import '../viewmodel/deal_lookup_viewmodel.dart';
import '../widgets/deal_game_card.dart';

class DealLookupView extends StatelessWidget {
  const DealLookupView({required this.id, super.key});
  final String id;
  @override
  Widget build(BuildContext context) {
    return BaseView<DealLookupViewModel>(
      viewModel: DealLookupViewModel(),
      onInit: (viewModel) {
        viewModel.getDeal(id);
      },
      builder: _builder,
    );
  }

  Widget _builder(DealLookupViewModel viewModel, BuildContext context) =>
      Scaffold(
        body: Center(
          child: Observer(
            builder: (_) {
              final deal = viewModel.deal;
              if (!viewModel.isError) {
                return _getView(viewModel, deal);
              } else {
                return ErrorView(
                  errorMessage: viewModel.errorMessage,
                  lottiePath: Lotties.error.lottiePath,
                );
              }
            },
          ),
        ),
      );

  Widget _getView(DealLookupViewModel viewModel, DealLookupModel? deal) {
    return viewModel.isLoading
        ? const CircularProgressIndicator()
        : GameDealCard(deal: deal);
  }
}
