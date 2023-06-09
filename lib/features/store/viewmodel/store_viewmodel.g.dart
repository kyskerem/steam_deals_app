// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreViewModel on _StoreViewModelBase, Store {
  late final _$storeListAtom =
      Atom(name: '_StoreViewModelBase.storeList', context: context);

  @override
  List<StoreModel> get storeList {
    _$storeListAtom.reportRead();
    return super.storeList;
  }

  @override
  set storeList(List<StoreModel> value) {
    _$storeListAtom.reportWrite(value, super.storeList, () {
      super.storeList = value;
    });
  }

  late final _$fetchStoresAsyncAction =
      AsyncAction('_StoreViewModelBase.fetchStores', context: context);

  @override
  Future<void> fetchStores() {
    return _$fetchStoresAsyncAction.run(() => super.fetchStores());
  }

  @override
  String toString() {
    return '''
storeList: ${storeList}
    ''';
  }
}
