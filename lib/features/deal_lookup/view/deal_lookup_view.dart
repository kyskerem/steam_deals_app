import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
      builder: (viewModel, context) {
        return Scaffold(
          body: Center(
            child: Observer(
              builder: (_) {
                final deal = viewModel.deal;
                if (!viewModel.isError) {
                  return !viewModel.isLoading
                      ? GameDealCard(deal: deal)
                      : const CircularProgressIndicator();
                } else {
                  return ErrorView(
                    errorMessage: viewModel.errorMessage,
                    lottiePath: Lotties.error.LottiePath,
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}
