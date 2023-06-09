import 'package:flutter/material.dart';

import '../../../core/widgets/list/grid_list.dart';
import '../model/stores.dart';

class StoreList extends StatelessWidget {
  const StoreList({
    required this.storeList,
    super.key,
  });

  final List<StoreModel> storeList;

  @override
  Widget build(BuildContext context) {
    return GridList(
      itemCount: storeList.length,
      onBuilder: (context, index) {
        final element = storeList.elementAt(index);
        final imageUrl = 'https://www.cheapshark.com/${element.images?.logo}';
        return _StoreGrid(imageUrl: imageUrl, element: element);
      },
    );
  }
}

class _StoreGrid extends StatelessWidget {
  const _StoreGrid({
    required this.imageUrl,
    required this.element,
  });

  final String imageUrl;
  final StoreModel element;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image(
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
          Expanded(flex: 2, child: Text(element.storeName ?? ''))
        ],
      ),
    );
  }
}
