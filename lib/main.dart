import 'package:flutter/material.dart';
import 'package:pixcloudx/view/screens/pages/account/account_page.dart';
import 'package:pixcloudx/view/screens/pages/home_screen.dart';

void main() {
  String titleAppBar = "Home";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: AccountPage(),
    );
  }
}
