// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Name _$NameFromJson(Map<String, dynamic> json) {
  return Name(
    firstName: json['FirstName'] as String,
    middleName: json['MiddleName'] as String,
    lastName: json['LastName'] as String,
    title: json['Title'] as String,
  );
}

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'FirstName': instance.firstName,
      'MiddleName': instance.middleName,
      'LastName': instance.lastName,
      'Title': instance.title,
    };
