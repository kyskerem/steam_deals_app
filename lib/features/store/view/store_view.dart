import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
      builder: (viewModel, context) {
        return Scaffold(
          body: Observer(
            builder: (_) {
              final storeList = viewModel.storeList;
              if (!viewModel.isError) {
                return viewModel.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : StoreList(storeList: storeList);
              } else {
                return ErrorView(
                  errorMessage: viewModel.errorMessage,
                  lottiePath: Lotties.error.LottiePath,
                );
              }
            },
          ),
        );
      },
    );
  }
}
