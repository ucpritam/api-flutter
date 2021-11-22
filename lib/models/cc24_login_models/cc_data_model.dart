import 'package:json_annotation/json_annotation.dart';
import 'cc_userinfo_model.dart';
part 'cc_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Data {
  String AuthToken;
  String EncryptedToken;
  UserInfo userInfo;

  Data(
      {required this.AuthToken,
      required this.EncryptedToken,
      required this.userInfo});

  factory Data.fromJson(Map<String, dynamic> json) => _$CCDataFromJson(json);

  Map<String, dynamic> toJson() => _$CCDataToJson(this);
}
