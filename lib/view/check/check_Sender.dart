import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/helper/db_helper.dart';
import '../../core/model/sender_model.dart';
import '../../core/provider/sms_listen_provider.dart';

class SenderListViewPage extends StatefulWidget {
  @override
  _SenderListViewPageState createState() => _SenderListViewPageState();
}

class _SenderListViewPageState extends State<SenderListViewPage> {
  List<Senders> sendersListesi = [];

  @override
  void initState() {
    super.initState();
    // Database'den sender'ları al
    DatabaseHelper().getAllSenders().then((list) {
      setState(() {
        sendersListesi = list;
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
      body: ListView.builder(
        itemCount: sendersListesi.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sendersListesi[index].senderName),
            subtitle: Text(sendersListesi[index].senderNumber),
            trailing: Checkbox(
              value: sendernumbers.contains(sendersListesi[index].senderNumber),
              onChanged: (secildiMi) {
                setState(() {
                  if (secildiMi!) {
                    sendernumbers.add(sendersListesi[index].senderNumber);
                  } else {
                    sendernumbers.remove(sendersListesi[index].senderNumber);
                  }
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // İşaretlenen sender numaralarını yazdır
          print('İşaretlenen Sender telefon Numaraları: $sendernumbers');
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
