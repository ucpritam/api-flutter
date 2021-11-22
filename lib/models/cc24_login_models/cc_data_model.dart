import 'package:json_annotation/json_annotation.dart';
import 'cc_userinfo_model.dart';
part 'cc_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Data {
  String AuthToken;
  String EncryptedToken;
  Map<String, dynamic> UserInfo;

  Data(
      {required this.AuthToken,
      required this.EncryptedToken,
      required this.UserInfo});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
