import 'package:flutter/material.dart';
import 'package:realworldflutterbloc/layout/base_scaffold.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(body: Center(child: Text("Sign in")));
  }
}
