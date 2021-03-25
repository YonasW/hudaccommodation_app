import 'package:flutter/material.dart';
import 'package:hudaccommodation_app/app/landing_page.dart';
import 'package:hudaccommodation_app/services/auth.dart';

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
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}
