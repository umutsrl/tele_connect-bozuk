import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tele_connect/core/provider/sms_listen_provider.dart';
import 'package:tele_connect/view/add_sender/add_Sender.dart';
import 'package:tele_connect/view/check/check_Sender.dart';
import 'package:tele_connect/view/check/check_person.dart';

import '../add_person/add_person_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});
  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SMSListenProvider smsListenProvider = Provider.of<SMSListenProvider>(context);

    smsListenProvider.startListening();
    return Scaffold(
      appBar: AppBar(
        title: Text("Vpn Listener"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPersonPage()),
              );
            },
            child: Text("add person"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddSenderPage()),
              );
            },
            child: Text("add sender"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SenderListViewPage()),
              );
            },
            child: Text("check sender"),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonsListViewPage()),
              );
            },
            child: Text("check person"),
          ),
        ],
      ),
    );
  }
}
