// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_userinfo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
    userStatus: json['UserStatus'] as int,
    xmppStatus: json['XmppStatus'] as int,
    userType: json['UserType'] as int,
    subscriberType: json['SubscriberType'] as int,
    imageName: json['ImageName'] as String,
    userLocation: json['UserLocation'] as int,
    userGroupID: json['UserGroupID'] as String,
    username: json['Username'] as String,
    password: json['Password'] as String,
    name: Name.fromJson(json['Name'] as Map<String, dynamic>),
    contactDetails:
        ContactDetails.fromJson(json['ContactDetails'] as Map<String, dynamic>),
    addressDetails:
        AddressDetails.fromJson(json['AddressDetails'] as Map<String, dynamic>),
    jid: json['Jid'] as String,
    fullJid: json['FullJid'] as String,
    xmppDomain: json['XmppDomain'] as String,
    subscriberId: json['SubscriberId'] as String,
    groupName: json['GroupName'] as String?,
    phone: json['Phone'] as String,
    mobile: json['Mobile'] as String,
    displayName: json['DisplayName'] as String,
    gender: json['Gender'] as int,
    designation: json['Designation'] as String,
    imageURL: json['ImageURL'] as String,
    numberOfInstance: json['NumberOfInstance'] as int,
  );
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'UserStatus': instance.userStatus,
      'XmppStatus': instance.xmppStatus,
      'UserType': instance.userType,
      'SubscriberType': instance.subscriberType,
      'ImageName': instance.imageName,
      'UserLocation': instance.userLocation,
      'UserGroupID': instance.userGroupID,
      'Username': instance.username,
      'Password': instance.password,
      'Name': instance.name.toJson(),
      'ContactDetails': instance.contactDetails.toJson(),
      'AddressDetails': instance.addressDetails.toJson(),
      'Jid': instance.jid,
      'FullJid': instance.fullJid,
      'XmppDomain': instance.xmppDomain,
      'SubscriberId': instance.subscriberId,
      'GroupName': instance.groupName,
      'Phone': instance.phone,
      'Mobile': instance.mobile,
      'DisplayName': instance.displayName,
      'Gender': instance.gender,
      'Designation': instance.designation,
      'ImageURL': instance.imageURL,
      'NumberOfInstance': instance.numberOfInstance,
    };
