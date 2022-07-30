import 'package:firebase_tutorial_app/services/auth_services.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign in to Brew App'),
        centerTitle: true,
      ),
      body: ElevatedButton(
        child: const Text('Sign In'),
        onPressed: () async {
          dynamic res = await _auth.signInAnon();
          if(res != null) print('Error signing in!');
          print('Signed in succesfully.');
          print(res);
        },
      ),
    );
  }
}
