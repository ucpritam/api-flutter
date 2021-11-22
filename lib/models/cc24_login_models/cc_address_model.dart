import 'package:json_annotation/json_annotation.dart';

part 'cc_address_model.g.dart';

@JsonSerializable()
class AddressDetails {
  String AddrLine1;
  String AddrLine2;
  String City;
  String State;
  String Country;
  String Zip;
  String MapURL;

  AddressDetails(
      {required this.AddrLine1,
      required this.AddrLine2,
      required this.City,
      required this.State,
      required this.Country,
      required this.Zip,
      required this.MapURL});

  factory AddressDetails.fromJson(Map<String, dynamic> json) =>
      _$AddressDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AddressDetailsToJson(this);
}
