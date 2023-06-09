import 'package:mobx/mobx.dart';
import 'package:steam_deals_application/core/base/viewmodel/base_viewmodel.dart';
import 'package:steam_deals_application/core/enum/network/api_path.dart';
import 'package:steam_deals_application/core/init/network/network_service.dart';
import 'package:steam_deals_application/features/store/model/stores.dart';

part 'store_viewmodel.g.dart';

class StoreViewModel = _StoreViewModelBase with _$StoreViewModel;

abstract class _StoreViewModelBase extends BaseViewModel with Store {
  final _networkService = NetworkService<StoreModel>();

  @observable
  List<StoreModel> storeList = [];

  @action
  Future<void> fetchStores() async {
    final data = await _networkService.fetchData(ApiPath.stores, StoreModel());
    if (data != null) {
      storeList = data;
    }
  }
}
