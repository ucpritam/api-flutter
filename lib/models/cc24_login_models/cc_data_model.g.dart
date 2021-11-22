// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$CCDataFromJson(Map<String, dynamic> json) {
  return Data(
    AuthToken: json['AuthToken'] as String,
    EncryptedToken: json['EncryptedToken'] as String,
    userInfo: UserInfo.fromJson(json['userInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CCDataToJson(Data instance) => <String, dynamic>{
      'AuthToken': instance.AuthToken,
      'EncryptedToken': instance.EncryptedToken,
      'userInfo': instance.userInfo,
    };
