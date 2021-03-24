import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hudaccommodation_app/App/signIn/sign_in_button.dart';
import 'package:hudaccommodation_app/App/signIn/social_sign_in_button.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously() async {
    final authResult = await FirebaseAuth.instance.signInAnonymously();
    print('${authResult.user.uid}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hud Accommodations'),
        elevation: 2.0,
        //This is a shadow for the title bar.
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

//In Dart (_) is used to declare private method So I can use it
  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48.0),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Sign in with Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign in with your Email',
            textColor: Colors.white,
            color: Colors.teal[700],
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          Text(
            'or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Skip',
            textColor: Colors.black,
            color: Colors.lime[300],
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
