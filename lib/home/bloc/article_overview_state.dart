part of 'article_overview_bloc.dart';

sealed class ArticleOverviewState extends Equatable {
  @override
  List<Object> get props => [];
}

final class ArticleOverviewLoading extends ArticleOverviewState {}

final class ArticleOverviewLoaded extends ArticleOverviewState {
  final List<Article> articles;

  ArticleOverviewLoaded(this.articles);

  @override
  List<Object> get props => [articles];
}

final class ArticleOverviewError extends ArticleOverviewState {}

final class ArticleOverviewInitial extends ArticleOverviewState {}
