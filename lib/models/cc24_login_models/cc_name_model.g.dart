// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Name _$NameFromJson(Map<String, dynamic> json) {
  return Name(
    FirstName: json['FirstName'] as String,
    MiddleName: json['MiddleName'] as String,
    LastName: json['LastName'] as String,
    Title: json['Title'] as String,
  );
}

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'FirstName': instance.FirstName,
      'MiddleName': instance.MiddleName,
      'LastName': instance.LastName,
      'Title': instance.Title,
    };
