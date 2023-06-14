import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:steam_deals_application/core/init/navigation/navigation_service.dart';
import 'package:steam_deals_application/features/store/model/stores.dart';

import '../../../core/base/view/base_view.dart';
import '../../../core/enum/lottie/lotties.dart';
import '../../../core/view/error_view.dart';
import '../viewmodel/store_viewmodel.dart';
import '../widgets/store_list.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<StoreViewModel>(
      viewModel: StoreViewModel(),
      onInit: (viewModel) {
        viewModel.fetchStores();
      },
      builder: _builder,
    );
  }

  Widget _builder(
    StoreViewModel viewModel,
    BuildContext context,
    NavigationService navigator,
  ) =>
      Scaffold(
        body: Observer(
          builder: (_) {
            final storeList = viewModel.storeList;
            if (!viewModel.isError) {
              return _getView(viewModel, storeList);
            } else {
              return ErrorView(
                errorMessage: viewModel.errorMessage,
                lottiePath: Lotties.error.lottiePath,
              );
            }
          },
        ),
      );
  Widget _getView(StoreViewModel viewModel, List<StoreModel> storeList) {
    return viewModel.isLoading
        ? const Center(child: CircularProgressIndicator())
        : StoreList(storeList: storeList);
  }
}
