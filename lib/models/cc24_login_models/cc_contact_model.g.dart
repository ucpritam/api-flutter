// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDetails _$ContactDetailsFromJson(Map<String, dynamic> json) {
  return ContactDetails(
    Phone1: json['Phone1'] as String,
    Phone2: json['Phone2'] as String,
    Mobile1: json['Mobile1'] as String,
    Mobile1_Service_Provider: json['Mobile1_Service_Provider'] as String,
    Mobile2: json['Mobile2'] as String,
    Mobile2_Service_Provider: json['Mobile2_Service_Provider'] as String,
    FAX1: json['FAX1'] as String,
    FAX2: json['FAX2'] as String,
    EmailID1: json['EmailID1'] as String,
    EmailID2: json['EmailID2'] as String,
  );
}

Map<String, dynamic> _$ContactDetailsToJson(ContactDetails instance) =>
    <String, dynamic>{
      'Phone1': instance.Phone1,
      'Phone2': instance.Phone2,
      'Mobile1': instance.Mobile1,
      'Mobile1_Service_Provider': instance.Mobile1_Service_Provider,
      'Mobile2': instance.Mobile2,
      'Mobile2_Service_Provider': instance.Mobile2_Service_Provider,
      'FAX1': instance.FAX1,
      'FAX2': instance.FAX2,
      'EmailID1': instance.EmailID1,
      'EmailID2': instance.EmailID2,
    };
