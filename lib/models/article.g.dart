// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      tagList:
          (json['tagList'] as List<dynamic>).map((e) => e as String).toList(),
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      favorited: json['favorited'] as bool,
      favoritesCount: (json['favoritesCount'] as num).toInt(),
      slug: json['slug'] as String,
      body: json['body'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'tagList': instance.tagList,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'favorited': instance.favorited,
      'favoritesCount': instance.favoritesCount,
      'slug': instance.slug,
      'body': instance.body,
    };
