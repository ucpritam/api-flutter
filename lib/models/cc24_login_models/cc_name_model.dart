import 'package:json_annotation/json_annotation.dart';
part 'cc_name_model.g.dart';

@JsonSerializable()
class Name {
  @JsonKey(name: 'FirstName')
  final String firstName;
  @JsonKey(name: 'MiddleName')
  final String middleName;
  @JsonKey(name: 'LastName')
  final String lastName;
  @JsonKey(name: 'Title')
  final String title;

  Name(
      {required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.title});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}
