// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      json['image'] as String,
      json['username'] as String,
      json['following'] as bool,
      json['bio'] as String,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'image': instance.image,
      'username': instance.username,
      'following': instance.following,
      'bio': instance.bio,
    };
