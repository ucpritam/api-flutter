// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileLoginParam _$MobileLoginParamFromJson(Map<String, dynamic> json) {
  return MobileLoginParam(
    username: json['username'] as String,
    password: json['password'] as String,
  )
    ..machineName = json['machineName'] as String
    ..consoleVersion = json['consoleVersion'] as String
    ..consoleVersionNumber = json['consoleVersionNumber'] as int
    ..deviceId = json['deviceId'] as String
    ..deviceIdentityNumber = json['deviceIdentityNumber'] as String
    ..forceLogin = json['forceLogin'] as bool
    ..authToken = json['authToken'] as String;
}

Map<String, dynamic> _$MobileLoginParamToJson(MobileLoginParam instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'machineName': instance.machineName,
      'consoleVersion': instance.consoleVersion,
      'consoleVersionNumber': instance.consoleVersionNumber,
      'deviceId': instance.deviceId,
      'deviceIdentityNumber': instance.deviceIdentityNumber,
      'forceLogin': instance.forceLogin,
      'authToken': instance.authToken,
    };
