import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx_weekend/core/base/base_view_model.dart';
import '../makeup_model/makeup_model.dart';
import '../makeup_service/makeup_service.dart';
part 'makeup_view_model.g.dart';

class MakeupViewModel = _MakeupViewModelBase with _$MakeupViewModel;

abstract class _MakeupViewModelBase with Store, BaseViewModel {
  late IMakeupService makeupService;

  @observable
  List<MakeupModel>? makeupList;

  @observable
  bool isLoading = true;
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchMakeupList() async {
    changeLoading();
    makeupList = await makeupService.makeupFetch();
    changeLoading();
  }

  @override
  void setContext(BuildContext context) {}
  @override
  void init() {
    makeupService = MakeupService(networkManager);
    fetchMakeupList();
  }
}
