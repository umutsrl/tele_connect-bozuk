import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tele_connect/core/extension/num_extension.dart';
import 'package:tele_connect/core/extension/text_editing_controller_extension.dart';
import 'package:tele_connect/core/extension/widget_extension.dart';
import 'add_person_viewmodel.dart'; // Adjust the import based on your folder structure

class AddPersonPage extends StatefulWidget {
  @override
  _AddPersonPageState createState() => _AddPersonPageState();
}

class _AddPersonPageState extends State<AddPersonPage> {
  late AddPersonViewmodel viewModel;

  @override
  void initState() {
    viewModel = AddPersonViewmodel();
    viewModel.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String persons = viewModel.addPersonList.map((person) => person.controller.textField(decoration: _decoration(person.labelText))).toList().toString();
    log(persons, name: "persons");
    return Scaffold(
      appBar: AppBar(title: Text('Add Person'), leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back))),
      body: Column(
        children: [
          ...viewModel.addPersonList.map((person) => person.controller.textField(decoration: _decoration(person.labelText))).toList(),
          20.height,
          ElevatedButton(
            onPressed: viewModel.save,
            child: Text('Save'),
          ),
        ],
      ).paddingAllMedium,
    );
  }

  InputDecoration _decoration(String labelText) => InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      );
}
