// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deal_lookup_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DealLookupViewModel on _DealLookupViewModelBase, Store {
  late final _$dealAtom =
      Atom(name: '_DealLookupViewModelBase.deal', context: context);

  @override
  DealLookupModel? get deal {
    _$dealAtom.reportRead();
    return super.deal;
  }

  @override
  set deal(DealLookupModel? value) {
    _$dealAtom.reportWrite(value, super.deal, () {
      super.deal = value;
    });
  }

  late final _$getDealAsyncAction =
      AsyncAction('_DealLookupViewModelBase.getDeal', context: context);

  @override
  Future<void> getDeal(String id) {
    return _$getDealAsyncAction.run(() => super.getDeal(id));
  }

  @override
  String toString() {
    return '''
deal: ${deal}
    ''';
  }
}
