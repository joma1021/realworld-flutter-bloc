import 'package:realworldflutterbloc/client/article_dio_client.dart';
import 'package:realworldflutterbloc/models/article_overview.dart';

class ArticleRepository {
  final ArticleDioClient _articleClient = ArticleDioClient();

  Future<ArticleOverview> getArticles(
          {int? page, String? filter, String? token}) =>
      _articleClient.getArticles(page: page, token: token, filter: filter);
}
