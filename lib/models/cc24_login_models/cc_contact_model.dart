import 'package:json_annotation/json_annotation.dart';
part 'cc_contact_model.g.dart';

@JsonSerializable()
class ContactDetails {
  String Phone1;
  String Phone2;
  String Mobile1;
  String Mobile1_Service_Provider;
  String Mobile2;
  String Mobile2_Service_Provider;
  String FAX1;
  String FAX2;
  String EmailID1;
  String EmailID2;

  ContactDetails(
      {required this.Phone1,
      required this.Phone2,
      required this.Mobile1,
      required this.Mobile1_Service_Provider,
      required this.Mobile2,
      required this.Mobile2_Service_Provider,
      required this.FAX1,
      required this.FAX2,
      required this.EmailID1,
      required this.EmailID2});

  factory ContactDetails.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ContactDetailsToJson(this);
}
