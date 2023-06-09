// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) => StoreModel(
      storeID: json['storeID'] as String?,
      storeName: json['storeName'] as String?,
      isActive: json['isActive'] as int?,
      images: json['images'] == null
          ? null
          : StoreImagesModel.fromJson(json['images'] as Map<String, dynamic>),
    );
