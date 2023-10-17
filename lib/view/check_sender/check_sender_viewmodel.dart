import 'dart:developer';

import 'package:mobx/mobx.dart';

import '../../core/model/sender_model.dart';
import '../../core/provider/sms_listen_provider.dart';
part 'check_sender_viewmodel.g.dart';

class CheckSenderViewmodel = _CheckSenderViewmodelBase with _$CheckSenderViewmodel;

abstract class _CheckSenderViewmodelBase with Store {
  @observable
  List<SenderModel> sendersListesi = [];

  @action
  void toggleSender(String senderNumber) {
    if (sendernumbers.contains(senderNumber)) {
      sendernumbers.remove(senderNumber);
    } else {
      sendernumbers.add(senderNumber);
    }
  }

  @action
  void printsendernum() {
    log(sendernumbers.toString());
  }
}
