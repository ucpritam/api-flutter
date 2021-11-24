import 'package:json_annotation/json_annotation.dart';
part 'cc_contact_model.g.dart';

@JsonSerializable()
class ContactDetails {
  @JsonKey(name: 'Phone1')
  final String phone1;
  @JsonKey(name: 'Phone2')
  final String phone2;
  @JsonKey(name: 'Mobile1')
  final String mobile1;
  @JsonKey(name: 'Mobile1_Service_Provider')
  final String mobile1ServiceProvider;
  @JsonKey(name: 'Mobile2')
  final String mobile2;
  @JsonKey(name: 'Mobile2_Service_Provider')
  final String mobile2ServiceProvider;
  @JsonKey(name: 'FAX1')
  final String fAX1;
  @JsonKey(name: 'FAX2')
  final String fAX2;
  @JsonKey(name: 'EmailID1')
  final String emailID1;
  @JsonKey(name: 'EmailID2')
  final String emailID2;

  ContactDetails(
      {required this.phone1,
      required this.phone2,
      required this.mobile1,
      required this.mobile1ServiceProvider,
      required this.mobile2,
      required this.mobile2ServiceProvider,
      required this.fAX1,
      required this.fAX2,
      required this.emailID1,
      required this.emailID2});

  factory ContactDetails.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ContactDetailsToJson(this);
}
