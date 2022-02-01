// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home.dart';
import 'pages/employ/welcome.dart';
import 'pages/employ/signin.dart';
import 'pages/employ/login.dart';
import 'pages/employ/employ.dart';
import 'pages/manager/welcome.dart';
import 'pages/manager/signin.dart';
import 'pages/manager/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

////////////////////////////// My App //////////////////////////////////////////
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EmployMainPage(),
    );
  }
}
