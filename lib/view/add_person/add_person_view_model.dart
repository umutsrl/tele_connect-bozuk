import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../core/helper/db_helper.dart';
import '../../core/model/person_model.dart';
part 'add_person_view_model.g.dart';

class AddPersonViewmodel = _AddPersonViewmodelBase with _$AddPersonViewmodel;

abstract class _AddPersonViewmodelBase with Store {
  @observable
  List<TextFieldModelAddPerson> addPersonList = [];
  @observable
  TextEditingController nameController = TextEditingController();
  @observable
  TextEditingController numberController = TextEditingController();
  @observable
  TextEditingController emailController = TextEditingController();
  @observable
  TextEditingController countryCodeController = TextEditingController();

  @action
  void init() {
    addPersonList = [
      TextFieldModelAddPerson(nameController, "Name"),
      TextFieldModelAddPerson(numberController, "Number"),
      TextFieldModelAddPerson(emailController, "Email"),
      TextFieldModelAddPerson(countryCodeController, "Country Code"),
    ];
  }

  @action
  Future<void> save() async {
    PersonModel person = PersonModel(
      personName: nameController.text,
      personNumber: numberController.text,
      personEmail: emailController.text,
      personCountryCode: countryCodeController.text,
    );
    await DatabaseHelper.instance.insertPerson(person);
  }
}

class TextFieldModelAddPerson {
  final TextEditingController controller;
  final String labelText;

  TextFieldModelAddPerson(this.controller, this.labelText);
}
