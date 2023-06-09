import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_viewmodel.dart';
import '../../../core/enum/api/api_path.dart';
import '../../../core/init/network/network_service.dart';
import '../model/deal_model.dart';

part 'deals_viewmodel.g.dart';

class DealsViewModel = _DealsViewModelBase with _$DealsViewModel;

abstract class _DealsViewModelBase extends BaseViewModel with Store {
  final NetworkService<DealModel> _networkService = NetworkService();

  @observable
  List<DealModel> dealList = [];
  @action
  Future<void> fetchSteamDeals() async {
    changeLoading();
    try {
      final data =
          await _networkService.fetchData(ApiPath.steamDeals, DealModel());
      if (data != null) {
        dealList = data;
        changeLoading();
        return;
      }
    } catch (e) {
      showError('Failed getting deals');
    }
  }
}
