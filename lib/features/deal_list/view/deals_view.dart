// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:steam_deals_application/core/base/view/base_view.dart';

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
      builder: (viewModel, context) {
        return Scaffold(
          body: Observer(
            builder: (_) {
              final dealList = viewModel.dealList;
              return DealsList(dealList: dealList);
            },
          ),
        );
      },
    );
  }
}
