import 'package:steam_deals_application/core/enum/network/api_path.dart';
import 'package:vexana/vexana.dart';

class NetworkService<T extends INetworkModel<T>> {
  NetworkManager<T> _getService() {
    final baseOptions =
        BaseOptions(baseUrl: 'https://www.cheapshark.com/api/1.0');
    return NetworkManager<T>(options: baseOptions);
  }

  NetworkManager<T> get _manager => _getService();
  Future<List<T>?> fetchData(ApiPath path, T parseModel) async {
    final response = await _manager.send<T, List<T>>(
      path.path,
      parseModel: parseModel,
      method: RequestType.GET,
    );

    return response.data;
  }
}
