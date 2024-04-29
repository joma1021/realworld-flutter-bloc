import 'package:flutter/material.dart';
import 'package:realworldflutterbloc/layout/base_scaffold.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(body: Center(child: Text("Article")));
  }
}
