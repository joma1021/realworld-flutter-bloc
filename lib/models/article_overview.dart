import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:realworldflutterbloc/models/article.dart';

part 'article_overview.g.dart';

@JsonSerializable()
class ArticleOverview extends Equatable {
  final List<Article> articles;
  final int articlesCount;

  const ArticleOverview(this.articles, this.articlesCount);

  @override
  List<Object?> get props => [articles, articlesCount];

  factory ArticleOverview.fromJson(Map<String, dynamic> json) =>
      _$ArticleOverviewFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleOverviewToJson(this);
}
