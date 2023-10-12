// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tele_connect/core/constant/app_constant.dart';
import 'package:provider/provider.dart';
import 'package:tele_connect/view/home_page_view/home_page.dart';
import 'core/provider/back_service.dart';
import 'core/provider/sms_listen_provider.dart';
import 'core/provider/switch_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeService();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => SMSListenProvider()),
    ], child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePageView()));
  }
}
