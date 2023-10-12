import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../core/helper/db_helper.dart';
import '../../core/model/person_model.dart';
import '../../core/provider/sms_listen_provider.dart';

class PersonsListViewPage extends StatefulWidget {
  const PersonsListViewPage({super.key});

  @override
  _PersonsListViewPageState createState() => _PersonsListViewPageState();
}

class _PersonsListViewPageState extends State<PersonsListViewPage> {
  List<Person> persons = [];
  @override
  void initState() {
    super.initState();
    fonk();
    // Database'den persons tablosundaki tüm verileri al
  }

  void fonk() async {
    await DatabaseHelper().getAllPersons().then((list) {
      setState(() {
        persons = list;
      });
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
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(persons[index].personName),
            subtitle: Text(persons[index].personNumber),
            trailing: Checkbox(
              value: recipients.contains(persons[index].personNumber),
              onChanged: (isChecked) {
                setState(() {
                  if (isChecked!) {
                    recipients.add(persons[index].personNumber);
                    mails.add(persons[index].personEmail);
                  } else {
                    recipients.remove(persons[index].personNumber);
                    mails.remove(persons[index].personEmail);
                  }
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // İşaretlenen person numaralarını ve mailleri yazdır
          print('İşaretlenen Recipients: $recipients');
          print('Mails: $mails');
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: PersonsListViewPage()));
}
