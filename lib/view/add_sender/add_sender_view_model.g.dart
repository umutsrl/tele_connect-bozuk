// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_sender_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddSenderViewModel on _AddSenderViewModelBase, Store {
  late final _$nameControllerAtom =
      Atom(name: '_AddSenderViewModelBase.nameController', context: context);

  @override
  TextEditingController get nameController {
    _$nameControllerAtom.reportRead();
    return super.nameController;
  }

  @override
  set nameController(TextEditingController value) {
    _$nameControllerAtom.reportWrite(value, super.nameController, () {
      super.nameController = value;
    });
  }

  late final _$numberControllerAtom =
      Atom(name: '_AddSenderViewModelBase.numberController', context: context);

  @override
  TextEditingController get numberController {
    _$numberControllerAtom.reportRead();
    return super.numberController;
  }

  @override
  set numberController(TextEditingController value) {
    _$numberControllerAtom.reportWrite(value, super.numberController, () {
      super.numberController = value;
    });
  }

  late final _$countryCodeControllerAtom = Atom(
      name: '_AddSenderViewModelBase.countryCodeController', context: context);

  @override
  TextEditingController get countryCodeController {
    _$countryCodeControllerAtom.reportRead();
    return super.countryCodeController;
  }

  @override
  set countryCodeController(TextEditingController value) {
    _$countryCodeControllerAtom.reportWrite(value, super.countryCodeController,
        () {
      super.countryCodeController = value;
    });
  }

  late final _$additionalInfoControllerAtom = Atom(
      name: '_AddSenderViewModelBase.additionalInfoController',
      context: context);

  @override
  TextEditingController get additionalInfoController {
    _$additionalInfoControllerAtom.reportRead();
    return super.additionalInfoController;
  }

  @override
  set additionalInfoController(TextEditingController value) {
    _$additionalInfoControllerAtom
        .reportWrite(value, super.additionalInfoController, () {
      super.additionalInfoController = value;
    });
  }

  late final _$senderInserterAsyncAction =
      AsyncAction('_AddSenderViewModelBase.senderInserter', context: context);

  @override
  Future<void> senderInserter() {
    return _$senderInserterAsyncAction.run(() => super.senderInserter());
  }

  late final _$_AddSenderViewModelBaseActionController =
      ActionController(name: '_AddSenderViewModelBase', context: context);

  @override
  void setSenderName(String name) {
    final _$actionInfo = _$_AddSenderViewModelBaseActionController.startAction(
        name: '_AddSenderViewModelBase.setSenderName');
    try {
      return super.setSenderName(name);
    } finally {
      _$_AddSenderViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenderNumber(String number) {
    final _$actionInfo = _$_AddSenderViewModelBaseActionController.startAction(
        name: '_AddSenderViewModelBase.setSenderNumber');
    try {
      return super.setSenderNumber(number);
    } finally {
      _$_AddSenderViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenderCountryCode(String code) {
    final _$actionInfo = _$_AddSenderViewModelBaseActionController.startAction(
        name: '_AddSenderViewModelBase.setSenderCountryCode');
    try {
      return super.setSenderCountryCode(code);
    } finally {
      _$_AddSenderViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAdditionalInfo(String info) {
    final _$actionInfo = _$_AddSenderViewModelBaseActionController.startAction(
        name: '_AddSenderViewModelBase.setAdditionalInfo');
    try {
      return super.setAdditionalInfo(info);
    } finally {
      _$_AddSenderViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nameController: ${nameController},
numberController: ${numberController},
countryCodeController: ${countryCodeController},
additionalInfoController: ${additionalInfoController}
    ''';
  }
}
