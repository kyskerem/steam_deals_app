// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_game_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MockGameInfo _$MockGameInfoFromJson(Map<String, dynamic> json) => MockGameInfo(
      gameID: json['gameID'] as String?,
      storeID: json['storeID'] as String?,
      name: json['name'] as String?,
      steamAppID: json['steamAppID'] as String?,
      salePrice: json['salePrice'] as String?,
      retailPrice: json['retailPrice'] as String?,
      steamRatingText: json['steamRatingText'] as String?,
      steamRatingPercent: json['steamRatingPercent'] as String?,
      steamRatingCount: json['steamRatingCount'] as String?,
      metacriticScore: json['metacriticScore'] as String?,
      metacriticLink: json['metacriticLink'] as String?,
      releaseDate: json['releaseDate'] as int?,
      publisher: json['publisher'] as String?,
      steamworks: json['steamworks'] as String?,
      thumb: json['thumb'] as String?,
    );

Map<String, dynamic> _$MockGameInfoToJson(MockGameInfo instance) =>
    <String, dynamic>{
      'gameID': instance.gameID,
      'storeID': instance.storeID,
      'name': instance.name,
      'steamAppID': instance.steamAppID,
      'salePrice': instance.salePrice,
      'retailPrice': instance.retailPrice,
      'steamRatingText': instance.steamRatingText,
      'steamRatingPercent': instance.steamRatingPercent,
      'steamRatingCount': instance.steamRatingCount,
      'metacriticScore': instance.metacriticScore,
      'metacriticLink': instance.metacriticLink,
      'releaseDate': instance.releaseDate,
      'publisher': instance.publisher,
      'steamworks': instance.steamworks,
      'thumb': instance.thumb,
    };
