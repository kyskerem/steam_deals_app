import 'package:vexana/vexana.dart';

class VexanaManager<T extends INetworkModel<T>> {
  final INetworkManager networkManager = NetworkManager<T>(
    options: BaseOptions(baseUrl: 'https://www.cheapshark.com/api/1.0'),
  );
}
