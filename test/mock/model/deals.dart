// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'deals.g.dart';

@JsonSerializable(createToJson: false)
class MockDealsModel extends INetworkModel<MockDealsModel> {
  final String? internalName;
  final String? title;
  final String? metacriticLink;
  final String? dealID;
  final String? storeID;
  final String? gameID;
  final String? salePrice;
  final String? normalPrice;
  final String? isOnSale;
  final String? savings;
  final String? metacriticScore;
  final String? steamRatingText;
  final String? steamRatingPercent;
  final String? steamRatingCount;
  final String? steamAppID;
  final int? releaseDate;
  final int? lastChange;
  final String? dealRating;
  final String? thumb;
  MockDealsModel({
    this.internalName,
    this.title,
    this.metacriticLink,
    this.dealID,
    this.storeID,
    this.gameID,
    this.salePrice,
    this.normalPrice,
    this.isOnSale,
    this.savings,
    this.metacriticScore,
    this.steamRatingText,
    this.steamRatingPercent,
    this.steamRatingCount,
    this.steamAppID,
    this.releaseDate,
    this.lastChange,
    this.dealRating,
    this.thumb,
  });

  @override
  MockDealsModel fromJson(Map<String, dynamic> json) =>
      _$MockDealsModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() {
    return null;
  }
}
