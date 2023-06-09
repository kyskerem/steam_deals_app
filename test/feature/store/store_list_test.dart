import 'package:flutter_test/flutter_test.dart';
import 'package:steam_deals_application/core/enum/network/api_path.dart';
import 'package:vexana/vexana.dart';

import '../../mock/model/store/mock_stores.dart';

void main() {
  setUp(() {});
  test('Get stores List', () async {
    final INetworkManager nm = NetworkManager<MockStoreModel>(
      options: BaseOptions(baseUrl: 'https://www.cheapshark.com/api/1.0'),
    );

    final response = await nm.send<MockStoreModel, List<MockStoreModel>>(
      ApiPath.stores.path,
      parseModel: MockStoreModel(),
      method: RequestType.GET,
    );

    print(response);
    expect(response.data, isList);
  });
}
