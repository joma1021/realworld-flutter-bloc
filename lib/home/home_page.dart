import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realworldflutterbloc/common/widgets/article_item.dart';
import 'package:realworldflutterbloc/common/widgets/paginator.dart';
import 'package:realworldflutterbloc/home/bloc/article_overview_bloc.dart';

import 'package:realworldflutterbloc/layout/base_scaffold.dart';
import 'package:realworldflutterbloc/repository/article_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ArticleOverviewBloc(articleRepository: ArticleRepository())
            ..add(InitArticleOverviewEvent()),
      child: RepositoryProvider(
        create: (context) => ArticleRepository(),
        child: BaseScaffold(
          body: SafeArea(
            child: Column(
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
                              blurRadius: 4,
                              color: Colors.grey,
                              offset: Offset(0, 0.2),
                            ),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  child: BlocBuilder<ArticleOverviewBloc, ArticleOverviewState>(
                    builder: (context, state) {
                      return switch (state) {
                        ArticleOverviewInitial() => const Center(
                            child: Column(
                              children: [
                                Text('Inital Load Articles'),
                                CircularProgressIndicator(),
                              ],
                            ),
                          ),
                        ArticleOverviewLoading() =>
                          const Center(child: CircularProgressIndicator()),
                        ArticleOverviewError() =>
                          const Text('Something went wrong!'),
                        ArticleOverviewLoaded() => Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  itemCount:
                                      state.articleOverview.articles.length,
                                  separatorBuilder: (context, index) => Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    endIndent: 16,
                                    indent: 16,
                                  ),
                                  itemBuilder: (context, index) {
                                    if (index + 1 ==
                                        state.articleOverview.articles.length) {
                                      return Column(
                                        children: [
                                          ArticleItem(
                                              article: state.articleOverview
                                                  .articles[index]),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Paginator(
                                              currentPage: state.page,
                                              pageCount: state.articleOverview
                                                  .articlesCount,
                                            ),
                                          ),
                                        ],
                                      );
                                    }
                                    return ArticleItem(
                                        article: state
                                            .articleOverview.articles[index]);
                                  },
                                ),
                              ),
                            ],
                          )
                      };
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
