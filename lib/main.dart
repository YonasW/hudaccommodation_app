import 'package:flutter/material.dart';
import 'package:hudaccommodation_app/app/landing_page.dart';
import 'package:hudaccommodation_app/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyHudApp());
}

class MyHudApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        title: 'Hud Accommodation',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: LandingPage(),
      ),
    );
  }
}
