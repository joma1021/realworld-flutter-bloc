import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:realworldflutterbloc/models/author.dart';

part 'article.g.dart';

@JsonSerializable()
class Article extends Equatable {
  final List<String> tagList;
  final String title;
  final String description;
  final Author author;

  final String createdAt;

  final String updatedAt;
  final bool favorited;
  final int favoritesCount;
  final String slug;
  final String body;

  const Article(
      {required this.tagList,
      required this.title,
      required this.description,
      required this.createdAt,
      required this.updatedAt,
      required this.favorited,
      required this.favoritesCount,
      required this.slug,
      required this.body,
      required this.author});

  @override
  List<Object> get props => [
        tagList,
        title,
        description,
        createdAt,
        updatedAt,
        favorited,
        favoritesCount,
        slug,
        body,
        author,
      ];

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
