import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tele_connect/core/helper/db_helper.dart';
import 'package:tele_connect/core/model/sender_model.dart';
part 'add_sender_view_model.g.dart';

class AddSenderViewModel = _AddSenderViewModelBase with _$AddSenderViewModel;

abstract class _AddSenderViewModelBase with Store {
  @observable
  TextEditingController nameController = TextEditingController();

  @observable
  TextEditingController numberController = TextEditingController();

  @observable
  TextEditingController countryCodeController = TextEditingController();

  @observable
  TextEditingController additionalInfoController = TextEditingController();

  @action
  void setSenderName(String name) {
    nameController.text = name;
  }

  @action
  void setSenderNumber(String number) {
    numberController.text = number;
  }

  @action
  void setSenderCountryCode(String code) {
    countryCodeController.text = code;
  }

  @action
  void setAdditionalInfo(String info) {
    additionalInfoController.text = info;
  }

  @action
  Future<void> senderInserter() async {
    SenderModel sender = SenderModel(
      senderName: nameController.text,
      senderNumber: numberController.text,
      senderCountryCode: countryCodeController.text,
      additionalInfo: additionalInfoController.text,
    );
    print('Sender added to the database: $sender');
    await DatabaseHelper.instance.insertSender(sender);
  }
}
