import 'package:vexana/vexana.dart';

import '../../constants/api/api_constants.dart';
import '../../enum/api/api_path.dart';

class NetworkService<T extends INetworkModel<T>> {
  NetworkManager<T> _getService() {
    final baseOptions = BaseOptions(baseUrl: ApiContants.cheapsharkApiBaseUrl);
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

  Future<R?> fetchLookup<R>(
    ApiPath path,
    T parseModel,
    String id,
  ) async {
    assert(
      path == ApiPath.dealWithId,
      'fetchLookup only works with id parameter',
    );
    final response = await _manager.get<R>(
      path.getWithIdPath(id),
    );
    final body = response.data;
    return body;
  }
}
