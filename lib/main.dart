// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tele_connect/core/theme/theme.dart';
import 'package:tele_connect/view/home_page_view/home_page.dart';
import 'core/provider/back_service.dart';
import 'core/provider/sms_listen_provider.dart';

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
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SMSListenProvider(),
          ),
        ],
        child: MaterialApp(
          theme: AppTheme.instance.lightTheme,
          debugShowCheckedModeBanner: false,
          home: HomePageView(),
        ));
  }
}
