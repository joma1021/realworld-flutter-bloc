import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:realworldflutterbloc/models/article_overview.dart';
import 'package:realworldflutterbloc/repository/article_repository.dart';

part 'article_overview_event.dart';
part 'article_overview_state.dart';

class ArticleOverviewBloc
    extends Bloc<ArticleOverviewEvent, ArticleOverviewState> {
  ArticleOverviewBloc({required this.articleRepository})
      : super(ArticleOverviewInitial()) {
    on<InitArticleOverviewEvent>(_onInitArticles);
    on<FetchArticleOverviewEvent>(_onFetchArticles);
  }

  final ArticleRepository articleRepository;

  Future<void> _onInitArticles(
    InitArticleOverviewEvent event,
    Emitter<ArticleOverviewState> emit,
  ) async {
    emit(ArticleOverviewLoading());
    try {
      final articles = await articleRepository.getArticles();
      emit(ArticleOverviewLoaded(articles, 1));
    } catch (_) {
      emit(ArticleOverviewError());
    }
  }

  Future<void> _onFetchArticles(
    FetchArticleOverviewEvent event,
    Emitter<ArticleOverviewState> emit,
  ) async {
    emit(ArticleOverviewLoading());
    try {
      final articles = await articleRepository.getArticles(page: event.page);
      emit(ArticleOverviewLoaded(articles, event.page));
    } catch (_) {
      emit(ArticleOverviewError());
    }
  }
}
