import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/base/view/base_view.dart';

import '../viewmodel/deals_viewmodel.dart';

class DealsView extends StatelessWidget {
  const DealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<DealsViewModel>(
      viewModel: DealsViewModel(),
      builder: (viewModel, context) {
        return const Text('Deals');
      },
    );
  }
}
