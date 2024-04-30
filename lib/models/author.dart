import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'author.g.dart';

@JsonSerializable()
class Author extends Equatable {
  final String image;
  final String username;
  final bool following;
  final String bio;

  const Author(this.image, this.username, this.following, this.bio);

  @override
  List<Object?> get props => [image, username, following, bio];

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}
