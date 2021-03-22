import 'package:flutter/material.dart';

import 'App/signIn/sign_in_page.dart';

void main() {
  runApp(myHudApp());
}

// ignore: camel_case_types
class myHudApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hud Accommodation',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: SignInPage());
  }
}
