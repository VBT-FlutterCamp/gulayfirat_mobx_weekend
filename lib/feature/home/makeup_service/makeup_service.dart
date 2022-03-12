import 'package:vexana/vexana.dart';

import '../makeup_model/makeup_model.dart';

abstract class IMakeupService {
  final INetworkManager networkManager;
  IMakeupService(this.networkManager);
  Future<List<MakeupModel>?> makeupFetch();
}

class MakeupService extends IMakeupService {
  MakeupService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<MakeupModel>?> makeupFetch() async {
    final response = await networkManager.send<MakeupModel, List<MakeupModel>?>(
        'api/v1/products.json?brand=maybelline',
        parseModel: MakeupModel(),
        method: RequestType.GET);
    return response.data;
  }
}
