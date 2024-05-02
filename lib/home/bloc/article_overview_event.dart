part of 'article_overview_bloc.dart';

sealed class ArticleOverviewEvent extends Equatable {
  const ArticleOverviewEvent();

  @override
  List<Object> get props => [];
}

class FetchArticleOverviewEvent extends ArticleOverviewEvent {
  @override
  List<Object> get props => [];
}
