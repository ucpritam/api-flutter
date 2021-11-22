// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressDetails _$AddressDetailsFromJson(Map<String, dynamic> json) {
  return AddressDetails(
    AddrLine1: json['AddrLine1'] as String,
    AddrLine2: json['AddrLine2'] as String,
    City: json['City'] as String,
    State: json['State'] as String,
    Country: json['Country'] as String,
    Zip: json['Zip'] as String,
    MapURL: json['MapURL'] as String,
  );
}

Map<String, dynamic> _$AddressDetailsToJson(AddressDetails instance) =>
    <String, dynamic>{
      'AddrLine1': instance.AddrLine1,
      'AddrLine2': instance.AddrLine2,
      'City': instance.City,
      'State': instance.State,
      'Country': instance.Country,
      'Zip': instance.Zip,
      'MapURL': instance.MapURL,
    };
