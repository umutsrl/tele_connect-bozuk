// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_sender_view_model.dart';

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

  @override
  String toString() {
    return '''
sendersListesi: ${sendersListesi}
    ''';
  }
}
