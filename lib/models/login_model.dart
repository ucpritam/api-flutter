import 'package:uuid/uuid.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class MobileLoginParam {
  String username;
  String password;
  String machineName = "";
  String consoleVersion = "6.0.0.1";
  int consoleVersionNumber = 6001;
  String deviceId = "53a0754b-126d-49f5-91bb-3e53b91d747c";
  String deviceIdentityNumber = "";
  bool forceLogin = false;
  String authToken = Uuid.NAMESPACE_NIL;

  MobileLoginParam({
    required this.username,
    required this.password,
  });

  factory MobileLoginParam.fromJson(Map<String, dynamic> json) =>
      _$MobileLoginParamFromJson(json);

  Map<String, dynamic> toJson() => _$MobileLoginParamToJson(this);
}
