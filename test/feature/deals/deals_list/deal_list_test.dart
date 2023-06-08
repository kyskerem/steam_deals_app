import 'package:flutter_test/flutter_test.dart';
import 'package:steam_deals_application/core/enum/network/api_path.dart';
import 'package:vexana/vexana.dart';

import '../../../mock/model/deals.dart';

void main() {
  setUp(() {});
  test('Get Deals', () async {
    final INetworkManager networkManager = NetworkManager<MockDealsModel>(
      options: BaseOptions(baseUrl: 'https://www.cheapshark.com/api/1.0'),
    );

    final response =
        await networkManager.send<MockDealsModel, List<MockDealsModel>>(
      ApiPath.deals.path,
      parseModel: MockDealsModel(),
      method: RequestType.GET,
    );
    print(response.data?.map((e) => e.gameID));
    expect(response.data, isList);
  });
}
