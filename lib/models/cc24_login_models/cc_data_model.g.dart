// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    authToken: json['AuthToken'] as String,
    encryptedToken: json['EncryptedToken'] as String,
    userInfo: UserInfo.fromJson(json['UserInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'AuthToken': instance.authToken,
      'EncryptedToken': instance.encryptedToken,
      'UserInfo': instance.userInfo.toJson(),
    };
