// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_person_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddPersonViewmodel on _AddPersonViewmodelBase, Store {
  late final _$addPersonListAtom =
      Atom(name: '_AddPersonViewmodelBase.addPersonList', context: context);

  @override
  List<TextFieldModelAddPerson> get addPersonList {
    _$addPersonListAtom.reportRead();
    return super.addPersonList;
  }

  @override
  set addPersonList(List<TextFieldModelAddPerson> value) {
    _$addPersonListAtom.reportWrite(value, super.addPersonList, () {
      super.addPersonList = value;
    });
  }

  late final _$nameControllerAtom =
      Atom(name: '_AddPersonViewmodelBase.nameController', context: context);

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
      Atom(name: '_AddPersonViewmodelBase.numberController', context: context);

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

  late final _$emailControllerAtom =
      Atom(name: '_AddPersonViewmodelBase.emailController', context: context);

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.reportRead();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.reportWrite(value, super.emailController, () {
      super.emailController = value;
    });
  }

  late final _$countryCodeControllerAtom = Atom(
      name: '_AddPersonViewmodelBase.countryCodeController', context: context);

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

  late final _$saveAsyncAction =
      AsyncAction('_AddPersonViewmodelBase.save', context: context);

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$_AddPersonViewmodelBaseActionController =
      ActionController(name: '_AddPersonViewmodelBase', context: context);

  @override
  void init() {
    final _$actionInfo = _$_AddPersonViewmodelBaseActionController.startAction(
        name: '_AddPersonViewmodelBase.init');
    try {
      return super.init();
    } finally {
      _$_AddPersonViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
addPersonList: ${addPersonList},
nameController: ${nameController},
numberController: ${numberController},
emailController: ${emailController},
countryCodeController: ${countryCodeController}
    ''';
  }
}
