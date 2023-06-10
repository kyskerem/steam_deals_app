import 'package:mobx/mobx.dart';
import 'package:steam_deals_application/core/base/viewmodel/base_viewmodel.dart';
import 'package:steam_deals_application/core/enum/api/api_path.dart';
import 'package:steam_deals_application/core/init/network/network_service.dart';

import '../model/deal_lookup_model.dart';
part 'deal_lookup_viewmodel.g.dart';

class DealLookupViewModel = _DealLookupViewModelBase with _$DealLookupViewModel;

abstract class _DealLookupViewModelBase extends BaseViewModel with Store {
  final _networkmanager = NetworkService<DealLookupModel>();

  @observable
  DealLookupModel? deal;

  @action
  Future<void> getDeal(String id) async {
    changeLoading();
    final response = await _networkmanager.fetchLookup<Map<String, dynamic>>(
      ApiPath.dealWithId,
      DealLookupModel(),
      id,
    );
    if (response != null) {
      deal = DealLookupModel().fromJson(response);
      changeLoading();
    } else {
      showError('Deal not found');
    }
  }
}
