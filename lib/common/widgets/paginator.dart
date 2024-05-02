import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realworldflutterbloc/home/bloc/article_overview_bloc.dart';

class Paginator extends StatelessWidget {
  const Paginator(
      {super.key, required this.pageCount, required this.currentPage});

  final int pageCount;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: (pageCount / 10).round(),
        itemBuilder: (context, index) => InkWell(
          onTap: () => context
              .read<ArticleOverviewBloc>()
              .add(FetchArticleOverviewEvent(index + 1)),
          child: Container(
            height: 32,
            width: 24,
            decoration: BoxDecoration(
                color: currentPage == index + 1
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.transparent,
                border:
                    Border.all(color: Theme.of(context).colorScheme.tertiary),
                borderRadius: (index + 1 == 1 || index == (pageCount / 20))
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4))
                    : BorderRadius.zero),
            child: Center(
              child: Text(
                (index + 1).toString(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: currentPage == index + 1
                        ? Colors.white
                        : Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
