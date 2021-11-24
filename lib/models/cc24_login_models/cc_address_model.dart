import 'package:json_annotation/json_annotation.dart';

part 'cc_address_model.g.dart';

@JsonSerializable()
class AddressDetails {
  @JsonKey(name: 'AddrLine1')
  final String addrLine1;
  @JsonKey(name: 'AddrLine2')
  final String addrLine2;
  @JsonKey(name: 'City')
  final String city;
  @JsonKey(name: 'State')
  final String state;
  @JsonKey(name: 'Country')
  final String country;
  @JsonKey(name: 'Zip')
  final String zip;
  @JsonKey(name: 'MapURL')
  final String mapURL;

  AddressDetails(
      {required this.addrLine1,
      required this.addrLine2,
      required this.city,
      required this.state,
      required this.country,
      required this.zip,
      required this.mapURL});

  factory AddressDetails.fromJson(Map<String, dynamic> json) =>
      _$AddressDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AddressDetailsToJson(this);
}
