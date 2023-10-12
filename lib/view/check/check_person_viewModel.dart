import '../../core/helper/db_helper.dart';
import '../../core/model/person_model.dart';

class CheckPersonViewModel {
  Future<List<Person>> updatePersonsList() async {
    List<Person> persons = await DatabaseHelper().getAllPersons();
    return (persons);
  }
}
