import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tele_connect/core/extension/context_extension.dart';
import 'package:tele_connect/core/extension/num_extension.dart';
import 'package:tele_connect/core/extension/string_extension.dart';
import 'package:tele_connect/core/provider/sms_listen_provider.dart';
import 'package:tele_connect/view/add_sender/add_sender_view.dart';
import 'package:tele_connect/view/check_sender/check_sender_view.dart';
import 'package:tele_connect/view/check_person/check_person_view.dart';

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
        title: "Vpn Listener".titleSmall(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          10.height,
          ElevatedButton(
            onPressed: () => context.push(AddPersonPage()),
            child: "add person".text(),
          ),
          10.height,
          ElevatedButton(
            onPressed: () => context.push(AddSenderView()),
            child: "add sender".text(),
          ),
          10.height,
          ElevatedButton(
            onPressed: () => context.push(SenderListViewPage()),
            child: "check sender".text(),
          ),
          10.height,
          ElevatedButton(
            onPressed: () => context.push(checkPersonView()),
            child: "check person".text(),
          ),
        ],
      ),
    );
  }
}
