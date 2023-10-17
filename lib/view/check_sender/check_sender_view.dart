import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:tele_connect/core/provider/sms_listen_provider.dart';
import '../../core/helper/db_helper.dart';
import 'check_sender_viewmodel.dart';

class SenderListViewPage extends StatefulWidget {
  @override
  _SenderListViewPageState createState() => _SenderListViewPageState();
}

class _SenderListViewPageState extends State<SenderListViewPage> {
  final CheckSenderViewmodel viewModel = CheckSenderViewmodel();

  @override
  void initState() {
    super.initState();
    // Database'den sender'ları al
    DatabaseHelper.instance.getAllSenders().then((list) {
      setState(() {
        viewModel.sendersListesi = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sender Listesi'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Consumer<SMSListenProvider>(
        builder: (context, provider, _) {
          return Observer(
            builder: (_) {
              return ListView.builder(
                itemCount: viewModel.sendersListesi.length,
                itemBuilder: (context, index) {
                  final sender = viewModel.sendersListesi[index];
                  return ListTile(
                    title: Text(sender.senderName),
                    subtitle: Text(sender.senderNumber),
                    trailing: Checkbox(
                      value: sendernumbers.contains(sender.senderNumber),
                      onChanged: (secildiMi) {
                        viewModel.toggleSender(sender.senderNumber);
                        setState(() {});
                      },
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.printsendernum();
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
