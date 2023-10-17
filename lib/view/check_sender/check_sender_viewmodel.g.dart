// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_sender_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CheckSenderViewmodel on _CheckSenderViewmodelBase, Store {
  late final _$sendersListesiAtom =
      Atom(name: '_CheckSenderViewmodelBase.sendersListesi', context: context);

  @override
  List<SenderModel> get sendersListesi {
    _$sendersListesiAtom.reportRead();
    return super.sendersListesi;
  }

  @override
  set sendersListesi(List<SenderModel> value) {
    _$sendersListesiAtom.reportWrite(value, super.sendersListesi, () {
      super.sendersListesi = value;
    });
  }

  late final _$_CheckSenderViewmodelBaseActionController =
      ActionController(name: '_CheckSenderViewmodelBase', context: context);

  @override
  void toggleSender(String senderNumber) {
    final _$actionInfo = _$_CheckSenderViewmodelBaseActionController
        .startAction(name: '_CheckSenderViewmodelBase.toggleSender');
    try {
      return super.toggleSender(senderNumber);
    } finally {
      _$_CheckSenderViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void printsendernum() {
    final _$actionInfo = _$_CheckSenderViewmodelBaseActionController
        .startAction(name: '_CheckSenderViewmodelBase.printsendernum');
    try {
      return super.printsendernum();
    } finally {
      _$_CheckSenderViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sendersListesi: ${sendersListesi}
    ''';
  }
}
