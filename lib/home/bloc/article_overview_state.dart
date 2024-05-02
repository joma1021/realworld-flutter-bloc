part of 'article_overview_bloc.dart';

sealed class ArticleOverviewState extends Equatable {
  @override
  List<Object> get props => [];
}

final class ArticleOverviewLoading extends ArticleOverviewState {}

final class ArticleOverviewLoaded extends ArticleOverviewState {
  final ArticleOverview articleOverview;
  final int page;

  ArticleOverviewLoaded(this.articleOverview, this.page);

  @override
  List<Object> get props => [articleOverview];
}

final class ArticleOverviewError extends ArticleOverviewState {}

final class ArticleOverviewInitial extends ArticleOverviewState {}
