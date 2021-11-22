// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    AuthToken: json['AuthToken'] as String,
    EncryptedToken: json['EncryptedToken'] as String,
    UserInfo: json['UserInfo'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'AuthToken': instance.AuthToken,
      'EncryptedToken': instance.EncryptedToken,
      'UserInfo': instance.UserInfo,
    };
