import 'package:api_app/models/cc24_login_models/cc_address_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'cc_contact_model.dart';
import 'cc_name_model.dart';
part 'cc_userinfo_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserInfo {
  @JsonKey(name: 'UserStatus')
  final int userStatus;
  @JsonKey(name: 'XmppStatus')
  final int xmppStatus;
  @JsonKey(name: 'UserType')
  final int userType;
  @JsonKey(name: 'SubscriberType')
  final int subscriberType;
  @JsonKey(name: 'ImageName')
  final String imageName;
  @JsonKey(name: 'UserLocation')
  final int userLocation;
  @JsonKey(name: 'UserGroupID')
  final String userGroupID;
  @JsonKey(name: 'Username')
  final String username;
  @JsonKey(name: 'Password')
  final String password;
  @JsonKey(name: 'Name')
  final Name name;
  @JsonKey(name: 'ContactDetails')
  final ContactDetails contactDetails;
  @JsonKey(name: 'AddressDetails')
  final AddressDetails addressDetails;
  @JsonKey(name: 'Jid')
  final String jid;
  @JsonKey(name: 'FullJid')
  final String fullJid;
  @JsonKey(name: 'XmppDomain')
  final String xmppDomain;
  @JsonKey(name: 'SubscriberId')
  final String subscriberId;
  @JsonKey(name: 'GroupName')
  final String? groupName;
  @JsonKey(name: 'Phone')
  final String phone;
  @JsonKey(name: 'Mobile')
  final String mobile;
  @JsonKey(name: 'DisplayName')
  final String displayName;
  @JsonKey(name: 'Gender')
  final int gender;
  @JsonKey(name: 'Designation')
  final String designation;
  @JsonKey(name: 'ImageURL')
  final String imageURL;
  @JsonKey(name: 'NumberOfInstance')
  final int numberOfInstance;

  UserInfo({
    required this.userStatus,
    required this.xmppStatus,
    required this.userType,
    required this.subscriberType,
    required this.imageName,
    required this.userLocation,
    required this.userGroupID,
    required this.username,
    required this.password,
    required this.name,
    required this.contactDetails,
    required this.addressDetails,
    required this.jid,
    required this.fullJid,
    required this.xmppDomain,
    required this.subscriberId,
    required this.groupName,
    required this.phone,
    required this.mobile,
    required this.displayName,
    required this.gender,
    required this.designation,
    required this.imageURL,
    required this.numberOfInstance,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
