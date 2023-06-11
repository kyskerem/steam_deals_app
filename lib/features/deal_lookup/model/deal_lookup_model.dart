import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

import 'game_info.dart';

part 'deal_lookup_model.g.dart';

@JsonSerializable(
  createToJson: false,
)
class DealLookupModel extends INetworkModel<DealLookupModel> {
  DealLookupModel({this.gameInfo});

  final GameInfo? gameInfo;

  @override
  DealLookupModel fromJson(Map<String, dynamic> json) =>
      _$DealLookupModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() {
    return null;
  }
}
