// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressDetails _$AddressDetailsFromJson(Map<String, dynamic> json) {
  return AddressDetails(
    addrLine1: json['AddrLine1'] as String,
    addrLine2: json['AddrLine2'] as String,
    city: json['City'] as String,
    state: json['State'] as String,
    country: json['Country'] as String,
    zip: json['Zip'] as String,
    mapURL: json['MapURL'] as String,
  );
}

Map<String, dynamic> _$AddressDetailsToJson(AddressDetails instance) =>
    <String, dynamic>{
      'AddrLine1': instance.addrLine1,
      'AddrLine2': instance.addrLine2,
      'City': instance.city,
      'State': instance.state,
      'Country': instance.country,
      'Zip': instance.zip,
      'MapURL': instance.mapURL,
    };
