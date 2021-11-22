import 'package:json_annotation/json_annotation.dart';
part 'cc_name_model.g.dart';

@JsonSerializable()
class Name {
  String FirstName;
  String MiddleName;
  String LastName;
  String Title;

  Name(
      {required this.FirstName,
      required this.MiddleName,
      required this.LastName,
      required this.Title});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}
