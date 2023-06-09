// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_stores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MockStoreModel _$MockStoreModelFromJson(Map<String, dynamic> json) =>
    MockStoreModel(
      storeID: json['storeID'] as String?,
      storeName: json['storeName'] as String?,
      isActive: json['isActive'] as int?,
      images: json['images'] == null
          ? null
          : MockStoreImagesModel.fromJson(
              json['images'] as Map<String, dynamic>),
    );
