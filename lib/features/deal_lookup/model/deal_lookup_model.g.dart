// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_lookup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DealLookupModel _$DealLookupModelFromJson(Map<String, dynamic> json) =>
    DealLookupModel(
      gameInfo: json['gameInfo'] == null
          ? null
          : GameInfo().fromJson(json['gameInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DealLookupModelToJson(DealLookupModel instance) =>
    <String, dynamic>{
      'gameInfo': instance.gameInfo,
    };
