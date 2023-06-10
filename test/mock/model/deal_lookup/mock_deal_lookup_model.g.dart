// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_deal_lookup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MockDealLookupModel _$MockDealLookupModelFromJson(Map<String, dynamic> json) =>
    MockDealLookupModel(
      gameInfo: json['gameInfo'] == null
          ? null
          : MockGameInfo().fromJson(json['gameInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MockDealLookupModelToJson(
  MockDealLookupModel instance,
) =>
    <String, dynamic>{
      'gameInfo': instance.gameInfo,
    };
