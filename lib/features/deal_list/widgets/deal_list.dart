import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/constants/string/string_constants.dart';

import '../../../core/extension/context_extension.dart';
import '../../../core/widgets/list/grid_list.dart';
import '../../deal_lookup/view/deal_lookup_view.dart';
import '../model/deal_model.dart';
import '../viewmodel/deals_viewmodel.dart';

class DealsList extends StatelessWidget {
  const DealsList({
    required this.dealList,
    required this.viewModel,
    super.key,
  });

  final List<DealModel> dealList;
  final DealsViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return GridList(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5,
        childAspectRatio: 2 / 3,
      ),
      itemCount: dealList.length,
      onBuilder: (context, index) {
        final element = dealList.elementAt(index);
        return _GridCard(viewModel: viewModel, element: element);
      },
    );
  }
}

class _GridCard extends StatelessWidget {
  const _GridCard({
    required this.viewModel,
    required this.element,
  });

  final DealsViewModel viewModel;
  final DealModel element;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        viewModel.navigator.push(DealLookupView(id: element.dealID ?? ''));
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _informationsColumn(context),
        ),
      ),
    );
  }

  List<Widget> _informationsColumn(BuildContext context) {
    return [
      Text(element.title ?? ''),
      Padding(
        padding: context.mediumPadding,
        child: Image(
          fit: BoxFit.cover,
          image: NetworkImage(element.thumb ?? ''),
        ),
      ),
      Text('${StringConstants.metacritic}:${element.metacriticScore}'),
      Text('${StringConstants.steamRate}:${element.steamRatingPercent}'),
      Text('${StringConstants.steamComments}:${element.steamRatingCount}')
    ];
  }
}
