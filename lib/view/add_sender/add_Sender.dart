import 'package:flutter/material.dart';
import '../../core/helper/db_helper.dart';
import '../../core/model/sender_model.dart';

class AddSenderPage extends StatefulWidget {
  @override
  _AddSenderPageState createState() => _AddSenderPageState();
}

class _AddSenderPageState extends State<AddSenderPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _countryCodeController = TextEditingController();
  final TextEditingController _additionalInfoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Sender'),
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
              decoration: InputDecoration(labelText: 'Sender Name'),
            ),
            TextField(
              controller: _numberController,
              decoration: InputDecoration(labelText: 'Sender Number'),
            ),
            TextField(
              controller: _countryCodeController,
              decoration: InputDecoration(labelText: 'Sender Country Code'),
            ),
            TextField(
              controller: _additionalInfoController,
              decoration: InputDecoration(labelText: 'Additional Info'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async {
                // Create a Senders object using the input values
                Senders sender = Senders(
                  senderName: _nameController.text,
                  senderNumber: _numberController.text,
                  senderCountryCode: _countryCodeController.text,
                  additionalInfo: _additionalInfoController.text,
                );

                // Insert the sender into the database
                final dbHelper = DatabaseHelper();
                await dbHelper.insertSender(sender);

                // You can now perform any actions needed after adding the sender to the database
                // For simplicity, let's just print a message
                print('Sender added to the database: $sender');
              },
              child: Text('Save Sender'),
            ),
          ],
        ),
      ),
    );
  }
}
