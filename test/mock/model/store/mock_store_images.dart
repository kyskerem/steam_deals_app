import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'mock_store_images.g.dart';

@JsonSerializable(createToJson: false)
class MockStoreImagesModel extends INetworkModel<MockStoreImagesModel> {
  MockStoreImagesModel(this.banner, this.logo, this.icon);

  @override
  factory MockStoreImagesModel.fromJson(Map<String, dynamic> json) =>
      _$MockStoreImagesModelFromJson(json);

  final String banner;
  final String logo;
  final String icon;

  @override
  Map<String, dynamic>? toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  MockStoreImagesModel fromJson(Map<String, dynamic> json) =>
      MockStoreImagesModel.fromJson(json);
}
