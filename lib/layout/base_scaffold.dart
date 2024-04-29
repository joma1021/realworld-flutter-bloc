import 'package:flutter/material.dart';
import 'package:realworldflutterbloc/article/article_page.dart';
import 'package:realworldflutterbloc/home/home_page.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  const BaseScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          child: Text(
            'conduit',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: const Text(
              'Home',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ArticleScreen(),
                ),
              );
            },
            child: const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ArticleScreen(),
                ),
              );
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
      body: body,
    );
  }
}
