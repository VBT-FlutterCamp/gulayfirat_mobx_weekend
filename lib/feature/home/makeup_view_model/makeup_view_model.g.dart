// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'makeup_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MakeupViewModel on _MakeupViewModelBase, Store {
  final _$makeupListAtom = Atom(name: '_MakeupViewModelBase.makeupList');

  @override
  List<MakeupModel>? get makeupList {
    _$makeupListAtom.reportRead();
    return super.makeupList;
  }

  @override
  set makeupList(List<MakeupModel>? value) {
    _$makeupListAtom.reportWrite(value, super.makeupList, () {
      super.makeupList = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_MakeupViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchMakeupListAsyncAction =
      AsyncAction('_MakeupViewModelBase.fetchMakeupList');

  @override
  Future<void> fetchMakeupList() {
    return _$fetchMakeupListAsyncAction.run(() => super.fetchMakeupList());
  }

  @override
  String toString() {
    return '''
makeupList: ${makeupList},
isLoading: ${isLoading}
    ''';
  }
}
