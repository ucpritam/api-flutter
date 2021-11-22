// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc24response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CC24Response _$CC24ResponseFromJson(Map<String, dynamic> json) {
  return CC24Response(
    Data: json['Data'] as String,
    ErrorMessage: json['ErrorMessage'] as String,
    StatusCode: json['StatusCode'] as int,
    dataType: json['dataType'] as String,
  );
}

Map<String, dynamic> _$CC24ResponseToJson(CC24Response instance) =>
    <String, dynamic>{
      'Data': instance.Data,
      'ErrorMessage': instance.ErrorMessage,
      'StatusCode': instance.StatusCode,
      'dataType': instance.dataType,
    };
