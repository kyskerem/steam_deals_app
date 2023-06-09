import 'package:mobx/mobx.dart';
import 'package:steam_deals_application/core/enum/network/api_path.dart';
import 'package:steam_deals_application/core/init/network/network_service.dart';
import 'package:steam_deals_application/features/deal_list/model/deal_model.dart';

import '../../../core/base/viewmodel/base_viewmodel.dart';

part 'deals_viewmodel.g.dart';

class DealsViewModel = _DealsViewModelBase with _$DealsViewModel;

abstract class _DealsViewModelBase extends BaseViewModel with Store {
  final NetworkService<DealModel> _networkService = NetworkService();

  @observable
  List<DealModel> dealList = [];

  @action
  Future<void> fetchSteamDeals() async {
    final data =
        await _networkService.fetchData(ApiPath.steamDeals, DealModel());
    if (data != null) {
      dealList = data;
    }
  }
}
