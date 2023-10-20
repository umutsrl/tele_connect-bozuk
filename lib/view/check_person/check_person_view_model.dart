import 'package:mobx/mobx.dart';
import '../../core/model/person_model.dart';
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
}
