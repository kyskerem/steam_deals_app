import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

import 'store_images.dart';

part 'stores.g.dart';

@JsonSerializable(createToJson: false)
class StoreModel extends INetworkModel<StoreModel> {
  StoreModel({this.storeID, this.storeName, this.isActive, this.images});

  final String? storeID;
  final String? storeName;
  final int? isActive;
  final StoreImagesModel? images;
  @override
  StoreModel fromJson(Map<String, dynamic> json) => _$StoreModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() {
    return null;
  }
}
