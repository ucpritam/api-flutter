import 'package:api_app/models/cc24_login_models/cc_address_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'cc_contact_model.dart';
import 'cc_name_model.dart';
part 'cc_userinfo_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserInfo {
  int UserStatus;
  int XmppStatus;
  int UserType;
  int SubscriberType;
  String ImageName;
  int UserLocation;
  String UserGroupID;
  String Username;
  String Password;
  Name name;
  ContactDetails contactDetails;
  AddressDetails addressDetails;
  String Jid;
  String FullJid;
  String XmppDomain;
  String SubscriberId;
  String? GroupName;
  String Phone;
  String Mobile;
  String DisplayName;
  int Gender;
  String Designation;
  String ImageURL;
  int NumberOfInstance;

  UserInfo({
    required this.UserStatus,
    required this.XmppStatus,
    required this.UserType,
    required this.SubscriberType,
    required this.ImageName,
    required this.UserLocation,
    required this.UserGroupID,
    required this.Username,
    required this.Password,
    required this.name,
    required this.contactDetails,
    required this.addressDetails,
    required this.Jid,
    required this.FullJid,
    required this.XmppDomain,
    required this.SubscriberId,
    required this.GroupName,
    required this.Phone,
    required this.Mobile,
    required this.DisplayName,
    required this.Gender,
    required this.Designation,
    required this.ImageURL,
    required this.NumberOfInstance,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
