// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/constants/string/string_constants.dart';

import '../../../core/extension/context_extension.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../../../core/widgets/list/grid_list.dart';
import '../../deal_lookup/view/deal_lookup_view.dart';
import '../model/deal_model.dart';
import '../viewmodel/deals_viewmodel.dart';

class DealsList extends StatelessWidget {
  const DealsList({
    required this.dealList,
    required this.viewModel,
    required this.navigation,
    super.key,
  });

  final List<DealModel> dealList;
  final DealsViewModel viewModel;
  final NavigationService navigation;
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
        return _GridCard(
          viewModel: viewModel,
          element: element,
          navigation: navigation,
        );
      },
    );
  }
}

class _GridCard extends StatelessWidget {
  const _GridCard({
    required this.viewModel,
    required this.element,
    required this.navigation,
  });

  final DealsViewModel viewModel;
  final DealModel element;
  final NavigationService navigation;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigation.push(DealLookupView(id: element.dealID ?? ''));
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
