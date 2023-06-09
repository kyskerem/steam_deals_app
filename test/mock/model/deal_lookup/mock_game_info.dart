import 'package:json_annotation/json_annotation.dart';

part 'mock_game_info.g.dart';

@JsonSerializable(createToJson: false)
class MockGameInfo {
  MockGameInfo({
    this.gameID,
    this.storeID,
    this.name,
    this.steamAppID,
    this.salePrice,
    this.retailPrice,
    this.steamRatingText,
    this.steamRatingPercent,
    this.steamRatingCount,
    this.metacriticScore,
    this.metacriticLink,
    this.releaseDate,
    this.publisher,
    this.steamworks,
    this.thumb,
  });

  factory MockGameInfo.fromJson(Map<String, dynamic> json) =>
      _$MockGameInfoFromJson(json);
  final String? gameID;
  final String? storeID;
  final String? name;
  final String? steamAppID;
  final String? salePrice;
  final String? retailPrice;
  final String? steamRatingText;
  final String? steamRatingPercent;
  final String? steamRatingCount;
  final String? metacriticScore;
  final String? metacriticLink;
  final int? releaseDate;
  final String? publisher;
  final String? steamworks;
  final String? thumb;
}
