import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:steam_deals_application/core/base/view/base_view.dart';
import 'package:steam_deals_application/core/widgets/list/grid_list.dart';
import 'package:steam_deals_application/features/store/viewmodel/store_viewmodel.dart';

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
              return GridList(
                itemCount: storeList.length,
                onBuilder: (context, index) {
                  final element = storeList.elementAt(index);
                  final imageUrl =
                      'https://www.cheapshark.com/${element.images?.logo}';
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
                },
              );
            },
          ),
        );
      },
    );
  }
}
