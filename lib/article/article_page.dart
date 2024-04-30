import 'package:flutter/material.dart';
import 'package:realworldflutterbloc/layout/base_scaffold.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(body: Center(child: Text("Article")));
  }
}
