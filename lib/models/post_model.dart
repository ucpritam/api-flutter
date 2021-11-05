import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class Post {
  final int userId;
  final int id;
  final String title;

  Post({required this.userId, required this.id, required this.title});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  // factory Post.fromJson(Map<String, dynamic> json) {
  //   return Post(
  //     userId: json['userId'],
  //     id: json['id'],
  //     title: json['title'],
  //   );
  // }
}
