import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';
part 'models.freezed.dart';

///------->DIARY MODEL<--------------------//
@freezed
abstract class DiaryModel with _$DiaryModel {
  const factory DiaryModel(
      {
        required String id,
        required  DateTime dateTime,
        required  String userId,
        required String  diaryTitle,
        required String diaryDescription,
      }
      ) = _DiaryModel;

  factory DiaryModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryModelFromJson(json);
}




///------->USER MODEL<--------------------//

@freezed
abstract class UserModel with _$UserModel {
const factory UserModel(
  {
  required String userId,
  required  String dateTime,
  required String firstName,
  required String middleName,
  required String  lastName,
  }
) = _UserModel;

factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

///-->CRUD FOR  USER  WITH FIRESTORE<---///
///-->CRUD FOR USER'S DIARY WITH FIRESTORE<--//
///--> HTTP SETUP WITH 'CLAUDE'  AI<--///
///
///
///
