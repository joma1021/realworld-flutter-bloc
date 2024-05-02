// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleOverview _$ArticleOverviewFromJson(Map<String, dynamic> json) =>
    ArticleOverview(
      (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['articlesCount'] as num).toInt(),
    );

Map<String, dynamic> _$ArticleOverviewToJson(ArticleOverview instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'articlesCount': instance.articlesCount,
    };
