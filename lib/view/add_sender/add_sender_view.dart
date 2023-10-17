import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tele_connect/core/extension/text_editing_controller_extension.dart';
import 'package:tele_connect/core/extension/widget_extension.dart';
import 'package:tele_connect/core/helper/db_helper.dart';
import 'package:tele_connect/view/add_sender/add_sender_view_model.dart';
import '../../core/model/sender_model.dart';

class AddSenderView extends StatefulWidget {
  const AddSenderView({super.key});

  @override
  State<AddSenderView> createState() => _AddSenderViewState();
}

class _AddSenderViewState extends State<AddSenderView> {
  AddSenderViewModel viewModel = AddSenderViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Sender'),
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          viewModel.nameController.textField(decoration: _decoration('Sender Name')).observer(),
          viewModel.numberController.textField(decoration: _decoration('Sender Number')).observer(),
          viewModel.countryCodeController.textField(decoration: _decoration('Sender Country Code')).observer(),
          viewModel.additionalInfoController.textField(decoration: _decoration('Additional Info')).observer(),
          SizedBox(height: 20.0),
          ElevatedButton(
              onPressed: () {
                viewModel.senderInserter();
              },
              child: Text('Save Sender')),
        ],
      ).paddingAllMedium,
    );
  }

  _decoration(String labelText) {
    return InputDecoration(labelText: labelText);
  }
}
