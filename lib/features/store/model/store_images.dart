import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'store_images.g.dart';

@JsonSerializable(createToJson: false)
class StoreImagesModel extends INetworkModel<StoreImagesModel> {
  StoreImagesModel(this.banner, this.logo, this.icon);

  @override
  factory StoreImagesModel.fromJson(Map<String, dynamic> json) =>
      _$StoreImagesModelFromJson(json);

  final String banner;
  final String logo;
  final String icon;

  @override
  Map<String, dynamic>? toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  StoreImagesModel fromJson(Map<String, dynamic> json) =>
      StoreImagesModel.fromJson(json);
}
