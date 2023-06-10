import 'package:vexana/vexana.dart';

import 'mock_game_info.dart';

part 'mock_deal_lookup_model.g.dart';

class MockDealLookupModel extends INetworkModel<MockDealLookupModel> {
  MockDealLookupModel({this.gameInfo});

  final MockGameInfo? gameInfo;

  @override
  MockDealLookupModel fromJson(Map<String, dynamic> json) =>
      _$MockDealLookupModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
