import 'package:flutter_test/flutter_test.dart';
import 'package:steam_deals_application/core/enum/api/api_path.dart';
import 'package:steam_deals_application/core/init/network/network_service.dart';

import '../../../mock/model/deal_lookup/mock_deal_lookup_model.dart';

void main() {
  setUp(() {});
  test('get deal lookup', () async {
    final networkService = NetworkService<MockDealLookupModel>();
    final response = await networkService.fetchLookup<Map<String, dynamic>>(
      ApiPath.dealWithId,
      MockDealLookupModel(),
      'HhzMJAgQYGZ%2B%2BFPpBG%2BRFcuUQZJO3KXvlnyYYGwGUfU%3D',
    );

    expect(response, isA<Map<String, dynamic>>());
    final deal = MockDealLookupModel().fromJson(response ?? {});
    expect(deal, isA<MockDealLookupModel>());
  });
}
