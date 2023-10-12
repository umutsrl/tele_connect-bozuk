import 'package:flutter/material.dart';

import '../../core/helper/db_helper.dart';
import '../../core/model/person_model.dart'; // Adjust the import based on your folder structure

class AddPersonPage extends StatefulWidget {
  @override
  _AddPersonPageState createState() => _AddPersonPageState();
}

class _AddPersonPageState extends State<AddPersonPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _countryCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Person'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _numberController,
              decoration: InputDecoration(labelText: 'Number'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _countryCodeController,
              decoration: InputDecoration(labelText: 'Country Code'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                Person person = Person(
                  personName: _nameController.text,
                  personNumber: _numberController.text,
                  personEmail: _emailController.text,
                  personCountryCode: _countryCodeController.text,
                );

                final dbHelper = DatabaseHelper();
                await dbHelper.insertPerson(person);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
