// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_person_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CheckSenderViewModel on _CheckSenderViewModelBase, Store {
  late final _$personsAtom =
      Atom(name: '_CheckSenderViewModelBase.persons', context: context);

  @override
  ObservableList<PersonModel> get persons {
    _$personsAtom.reportRead();
    return super.persons;
  }

  @override
  set persons(ObservableList<PersonModel> value) {
    _$personsAtom.reportWrite(value, super.persons, () {
      super.persons = value;
    });
  }

  late final _$_CheckSenderViewModelBaseActionController =
      ActionController(name: '_CheckSenderViewModelBase', context: context);

  @override
  void setPersons(List<PersonModel> newPersons) {
    final _$actionInfo = _$_CheckSenderViewModelBaseActionController
        .startAction(name: '_CheckSenderViewModelBase.setPersons');
    try {
      return super.setPersons(newPersons);
    } finally {
      _$_CheckSenderViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleRecipient(
      String personNumber, String personEmail, bool isChecked) {
    final _$actionInfo = _$_CheckSenderViewModelBaseActionController
        .startAction(name: '_CheckSenderViewModelBase.toggleRecipient');
    try {
      return super.toggleRecipient(personNumber, personEmail, isChecked);
    } finally {
      _$_CheckSenderViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
persons: ${persons}
    ''';
  }
}
