import 'package:flutter/material.dart';
import 'package:realworldflutterbloc/layout/base_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(body: Center(child: Text("Hello World")));
  }
}
