import 'package:flutter/material.dart';
import 'package:steam_deals_application/core/extension/context_extension.dart';

import '../../../core/widgets/list/grid_list.dart';
import '../model/deal_model.dart';

class DealsList extends StatelessWidget {
  const DealsList({
    required this.dealList,
    super.key,
  });

  final List<DealModel> dealList;

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
        return InkWell(
          onTap: () {},
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(element.title ?? ''),
                Padding(
                  padding: context.mediumPadding,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(element.thumb ?? ''),
                  ),
                ),
                Text('Metacritic:${element.metacriticScore}'),
                Text('Steam rate:${element.steamRatingPercent}'),
                Text('Steam comments:${element.steamRatingCount}')
              ],
            ),
          ),
        );
      },
    );
  }
}
