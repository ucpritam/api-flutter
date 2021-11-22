// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cc_userinfo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
    UserStatus: json['UserStatus'] as int,
    XmppStatus: json['XmppStatus'] as int,
    UserType: json['UserType'] as int,
    SubscriberType: json['SubscriberType'] as int,
    ImageName: json['ImageName'] as String,
    UserLocation: json['UserLocation'] as int,
    UserGroupID: json['UserGroupID'] as String,
    Username: json['Username'] as String,
    Password: json['Password'] as String,
    Name: json['name'] as Map<String, dynamic>,
    ContactDetails: json['contactDetails'] as Map<String, dynamic>,
    AddressDetails: json['addressDetails'] as Map<String, dynamic>,
    Jid: json['Jid'] as String,
    FullJid: json['FullJid'] as String,
    XmppDomain: json['XmppDomain'] as String,
    SubscriberId: json['SubscriberId'] as String,
    GroupName: json['GroupName'] as String?,
    Phone: json['Phone'] as String,
    Mobile: json['Mobile'] as String,
    DisplayName: json['DisplayName'] as String,
    Gender: json['Gender'] as int,
    Designation: json['Designation'] as String,
    ImageURL: json['ImageURL'] as String,
    NumberOfInstance: json['NumberOfInstance'] as int,
  );
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'UserStatus': instance.UserStatus,
      'XmppStatus': instance.XmppStatus,
      'UserType': instance.UserType,
      'SubscriberType': instance.SubscriberType,
      'ImageName': instance.ImageName,
      'UserLocation': instance.UserLocation,
      'UserGroupID': instance.UserGroupID,
      'Username': instance.Username,
      'Password': instance.Password,
      'name': instance.Name,
      'contactDetails': instance.ContactDetails,
      'addressDetails': instance.AddressDetails,
      'Jid': instance.Jid,
      'FullJid': instance.FullJid,
      'XmppDomain': instance.XmppDomain,
      'SubscriberId': instance.SubscriberId,
      'GroupName': instance.GroupName,
      'Phone': instance.Phone,
      'Mobile': instance.Mobile,
      'DisplayName': instance.DisplayName,
      'Gender': instance.Gender,
      'Designation': instance.Designation,
      'ImageURL': instance.ImageURL,
      'NumberOfInstance': instance.NumberOfInstance,
    };
