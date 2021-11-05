import 'package:json_annotation/json_annotation.dart';

part 'comment_model.g.dart';

@JsonSerializable()
class Comment {
  final int postId;
  final int id;
  final String name;

  Comment({required this.postId, required this.id, required this.name});

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  // factory Comments.fromJson(Map<String, dynamic> json) {
  //   return Comments(
  //     postId: json['postId'],
  //     id: json['id'],
  //     name: json['name'],
  //   );
  // }
}
