import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:realworldflutterbloc/models/article.dart';
import 'package:realworldflutterbloc/repository/article_repository.dart';

part 'article_overview_event.dart';
part 'article_overview_state.dart';

class ArticleOverviewBloc
    extends Bloc<ArticleOverviewEvent, ArticleOverviewState> {
  ArticleOverviewBloc({required this.articleRepository})
      : super(ArticleOverviewInitial()) {
    on<FetchArticleOverviewEvent>(_onFetchArticles);
  }

  final ArticleRepository articleRepository;

  Future<void> _onFetchArticles(
    FetchArticleOverviewEvent event,
    Emitter<ArticleOverviewState> emit,
  ) async {
    emit(ArticleOverviewLoading());
    try {
      final articles = await articleRepository.getArticles();
      emit(ArticleOverviewLoaded(articles));
    } catch (_) {
      emit(ArticleOverviewError());
    }
  }
}
