import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:steam_deals_application/core/base/view/base_view.dart';
import 'package:steam_deals_application/features/store/viewmodel/store_viewmodel.dart';

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
              return StoreList(storeList: viewModel.storeList);
            },
          ),
        );
      },
    );
  }
}
