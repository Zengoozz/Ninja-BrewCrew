import 'package:firebase_tutorial_app/screens/auth/auth_screen.dart';

import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Either HomeScreen or AuthScreen ?
    return const AuthScreen();
  }
}