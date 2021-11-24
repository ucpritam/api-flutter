// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDetails _$ContactDetailsFromJson(Map<String, dynamic> json) {
  return ContactDetails(
    phone1: json['Phone1'] as String,
    phone2: json['Phone2'] as String,
    mobile1: json['Mobile1'] as String,
    mobile1ServiceProvider: json['Mobile1_Service_Provider'] as String,
    mobile2: json['Mobile2'] as String,
    mobile2ServiceProvider: json['Mobile2_Service_Provider'] as String,
    fAX1: json['FAX1'] as String,
    fAX2: json['FAX2'] as String,
    emailID1: json['EmailID1'] as String,
    emailID2: json['EmailID2'] as String,
  );
}

Map<String, dynamic> _$ContactDetailsToJson(ContactDetails instance) =>
    <String, dynamic>{
      'Phone1': instance.phone1,
      'Phone2': instance.phone2,
      'Mobile1': instance.mobile1,
      'Mobile1_Service_Provider': instance.mobile1ServiceProvider,
      'Mobile2': instance.mobile2,
      'Mobile2_Service_Provider': instance.mobile2ServiceProvider,
      'FAX1': instance.fAX1,
      'FAX2': instance.fAX2,
      'EmailID1': instance.emailID1,
      'EmailID2': instance.emailID2,
    };
