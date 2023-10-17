import 'package:mobx/mobx.dart';
import '../../core/model/person_model.dart';
import '../../core/provider/sms_listen_provider.dart';
part 'check_person_view_model.g.dart';

class CheckSenderViewModel = _CheckSenderViewModelBase with _$CheckSenderViewModel;

abstract class _CheckSenderViewModelBase with Store {
  @observable
  ObservableList<PersonModel> persons = ObservableList();

  @action
  void setPersons(List<PersonModel> newPersons) {
    persons.clear();
    persons.addAll(newPersons);
  }

  @action
  void toggleRecipient(String personNumber, String personEmail, bool isChecked) {
    if (isChecked) {
      recipients.add(personNumber);
      mails.add(personEmail);
    } else {
      recipients.remove(personNumber);
      mails.remove(personEmail);
    }
  }

  void printer() {
    print('İşaretlenen Recipients: $recipients');
    print('Mails: $mails');
  }
}
