import 'package:json_annotation/json_annotation.dart';
import 'cc_userinfo_model.dart';
part 'cc_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Data {
  @JsonKey(name: 'AuthToken')
  final String authToken;
  @JsonKey(name: 'EncryptedToken')
  final String encryptedToken;
  @JsonKey(name: 'UserInfo')
  final UserInfo userInfo;

  Data(
      {required this.authToken,
      required this.encryptedToken,
      required this.userInfo});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
