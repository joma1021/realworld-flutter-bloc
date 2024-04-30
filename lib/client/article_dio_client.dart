import 'package:dio/dio.dart';
import 'package:realworldflutterbloc/models/article.dart';

class ArticleDioClient {
  final Dio _dio = Dio();
  final _baseUrl = "https://api.realworld.io/api";

  Future<List<Article>> getArticles(
      {int? page, String? token, String? filter}) async {
    // Perform GET request to the endpoint "/users/<id>"
    final offset = page != null ? (page - 1) * 10 : 0;
    Response articlesData = await _dio
        .get('$_baseUrl/articles', queryParameters: {'offset': offset});

    // Prints the raw data returned by the server
    List<Article> articles = (articlesData as List)
        .map((article) => Article.fromJson(article.data))
        .toList();

    return articles;
  }
}
