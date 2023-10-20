import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../../core/helper/db_helper.dart';
import '../../core/model/person_model.dart';
import '../../core/provider/sms_listen_provider.dart';
import 'check_person_view_model.dart';

class checkPersonView extends StatefulWidget {
  const checkPersonView({Key? key}) : super(key: key);

  @override
  _checkPersonViewState createState() => _checkPersonViewState();
}

class _checkPersonViewState extends State<checkPersonView> {
  late final CheckSenderViewModel _checkSenderViewModel;

  @override
  void initState() {
    super.initState();
    _checkSenderViewModel = CheckSenderViewModel();
    databaseinitializer();
  }

  void databaseinitializer() async {
    await DatabaseHelper.instance.getAllPersons().then((list) {
      _checkSenderViewModel.setPersons(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persons List'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Consumer<SMSListenProvider>(builder: (context, provider, _) {
        return Observer(builder: (_) {
          final persons = _checkSenderViewModel.persons;
          return ListView.builder(
            itemCount: persons.length,
            itemBuilder: (context, index) {
              PersonModel person = persons[index];
              return ListTile(
                title: Text(person.personName),
                subtitle: Text(person.personNumber),
                trailing: Checkbox(
                    value: provider.recipients.contains(person.personNumber),
                    onChanged: (isChecked) {
                      provider.toggleRecipient(person.personNumber, person.personEmail, isChecked!);
                    }

                    // Alternatif : Bu şekilde de yazılabilir hangisi daha uygun diye sor.
                    // (isChecked) => onChanged2(isChecked, person),
                    ),
              );
            },
          );
        });
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final provider = Provider.of<SMSListenProvider>(context, listen: false);
          provider.printRecipientAndMails();
        },
        child: const Icon(Icons.check),
      ),
    );
  }
  // Alternatif :
  // onChanged2(bool? isChecked, PersonModel person) {
  //   _checkSenderViewModel.toggleRecipient(person.personNumber, person.personEmail, isChecked!);
  // }
}
