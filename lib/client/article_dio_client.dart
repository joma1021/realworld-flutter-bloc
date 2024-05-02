import 'package:dio/dio.dart';
import 'package:realworldflutterbloc/models/article.dart';
import 'package:realworldflutterbloc/models/article_overview.dart';

class ArticleDioClient {
  final Dio _dio = Dio();
  final _baseUrl = "https://api.realworld.io/api";

  Future<List<Article>> getArticles(
      {int? page, String? token, String? filter}) async {
    try {
      final offset = page != null ? (page - 1) * 10 : 0;
      Response response = await _dio
          .get('$_baseUrl/articles', queryParameters: {'offset': offset});

      final List<Article> articles =
          ArticleOverview.fromJson(response.data).articles;

      return articles;
    } catch (e) {
      rethrow;
    }
  }
}
