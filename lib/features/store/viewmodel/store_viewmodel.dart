import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_viewmodel.dart';
import '../../../core/enum/api/api_path.dart';
import '../../../core/init/network/network_service.dart';
import '../model/stores.dart';

part 'store_viewmodel.g.dart';

class StoreViewModel = _StoreViewModelBase with _$StoreViewModel;

abstract class _StoreViewModelBase extends BaseViewModel with Store {
  final _networkService = NetworkService<StoreModel>();

  @observable
  List<StoreModel> storeList = [];

  @action
  Future<void> fetchStores() async {
    try {
      changeLoading();
      final data =
          await _networkService.fetchData(ApiPath.stores, StoreModel());
      if (data != null) {
        storeList = data;
        changeLoading();
        return;
      }
    } catch (e) {
      showError('failed fetchin stores');
    }
  }
}
