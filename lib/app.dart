import 'package:flutter/material.dart';
import 'package:realworldflutterbloc/article/article_page.dart';
import 'package:realworldflutterbloc/home/home_page.dart';
import 'package:realworldflutterbloc/theme.dart';

class RealwordDemoApp extends StatelessWidget {
  const RealwordDemoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conduit',
      theme: theme,
      routes: {
        '/': (context) => const HomePage(),
        '/article': (context) => const ArticlePage()
      },
    );
  }
}
