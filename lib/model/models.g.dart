// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiaryModel _$DiaryModelFromJson(Map<String, dynamic> json) => _DiaryModel(
  id: json['id'] as String,
  dateTime: DateTime.parse(json['dateTime'] as String),
  diaryTitle: json['diaryTitle'] as String,
  diaryDescription: json['diaryDescription'] as String,
);

Map<String, dynamic> _$DiaryModelToJson(_DiaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'diaryTitle': instance.diaryTitle,
      'diaryDescription': instance.diaryDescription,
    };

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userId: json['userId'] as String,
  dateTime: json['dateTime'] as String,
  firstName: json['firstName'] as String,
  middleName: json['middleName'] as String,
  lastName: json['lastName'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'dateTime': instance.dateTime,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
    };
