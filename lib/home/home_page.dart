import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:realworldflutterbloc/layout/base_scaffold.dart';
import 'package:realworldflutterbloc/repository/article_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ArticleRepository(),
      child: BaseScaffold(
          body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 6,
              color: Theme.of(context).colorScheme.secondary,
              child: const Center(
                child: Text(
                  'conduit',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      shadows: [
                        Shadow(
                          blurRadius: 4, // shadow blur
                          color: Colors.grey, // shadow color
                          offset:
                              Offset(0, 0.2), // how much shadow will be shown
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
