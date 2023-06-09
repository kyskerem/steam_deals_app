import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

import 'mock_store_images.dart';

part 'mock_stores.g.dart';

@JsonSerializable(createToJson: false)
class MockStoreModel extends INetworkModel<MockStoreModel> {
  MockStoreModel({this.storeID, this.storeName, this.isActive, this.images});

  final String? storeID;
  final String? storeName;
  final int? isActive;
  final MockStoreImagesModel? images;
  @override
  MockStoreModel fromJson(Map<String, dynamic> json) =>
      _$MockStoreModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() {
    return null;
  }
}
