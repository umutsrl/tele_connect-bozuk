import 'package:mobx/mobx.dart';

import '../../core/model/sender_model.dart';
part 'check_sender_view_model.g.dart';

class CheckSenderViewmodel = _CheckSenderViewmodelBase with _$CheckSenderViewmodel;

abstract class _CheckSenderViewmodelBase with Store {
  @observable
  List<SenderModel> sendersListesi = [];
}
