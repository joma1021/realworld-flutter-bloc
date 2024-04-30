import 'package:flutter/material.dart';
import 'package:realworldflutterbloc/layout/base_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(body: Center(child: Text("Hello World")));
  }
}
