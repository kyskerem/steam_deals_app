// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deals_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DealsViewModel on _DealsViewModelBase, Store {
  late final _$dealListAtom =
      Atom(name: '_DealsViewModelBase.dealList', context: context);

  @override
  List<DealModel> get dealList {
    _$dealListAtom.reportRead();
    return super.dealList;
  }

  @override
  set dealList(List<DealModel> value) {
    _$dealListAtom.reportWrite(value, super.dealList, () {
      super.dealList = value;
    });
  }

  late final _$fetchSteamDealsAsyncAction =
      AsyncAction('_DealsViewModelBase.fetchSteamDeals', context: context);

  @override
  Future<void> fetchSteamDeals() {
    return _$fetchSteamDealsAsyncAction.run(() => super.fetchSteamDeals());
  }

  @override
  String toString() {
    return '''
dealList: ${dealList}
    ''';
  }
}
