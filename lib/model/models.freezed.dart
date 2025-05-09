// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiaryModel implements DiagnosticableTreeMixin {

 String get id; DateTime get dateTime; String get userId; String get diaryTitle; String get diaryDescription;
/// Create a copy of DiaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiaryModelCopyWith<DiaryModel> get copyWith => _$DiaryModelCopyWithImpl<DiaryModel>(this as DiaryModel, _$identity);

  /// Serializes this DiaryModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DiaryModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('dateTime', dateTime))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('diaryTitle', diaryTitle))..add(DiagnosticsProperty('diaryDescription', diaryDescription));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.diaryTitle, diaryTitle) || other.diaryTitle == diaryTitle)&&(identical(other.diaryDescription, diaryDescription) || other.diaryDescription == diaryDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dateTime,userId,diaryTitle,diaryDescription);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DiaryModel(id: $id, dateTime: $dateTime, userId: $userId, diaryTitle: $diaryTitle, diaryDescription: $diaryDescription)';
}


}

/// @nodoc
abstract mixin class $DiaryModelCopyWith<$Res>  {
  factory $DiaryModelCopyWith(DiaryModel value, $Res Function(DiaryModel) _then) = _$DiaryModelCopyWithImpl;
@useResult
$Res call({
 String id, DateTime dateTime, String userId, String diaryTitle, String diaryDescription
});




}
/// @nodoc
class _$DiaryModelCopyWithImpl<$Res>
    implements $DiaryModelCopyWith<$Res> {
  _$DiaryModelCopyWithImpl(this._self, this._then);

  final DiaryModel _self;
  final $Res Function(DiaryModel) _then;

/// Create a copy of DiaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dateTime = null,Object? userId = null,Object? diaryTitle = null,Object? diaryDescription = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,diaryTitle: null == diaryTitle ? _self.diaryTitle : diaryTitle // ignore: cast_nullable_to_non_nullable
as String,diaryDescription: null == diaryDescription ? _self.diaryDescription : diaryDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DiaryModel with DiagnosticableTreeMixin implements DiaryModel {
  const _DiaryModel({required this.id, required this.dateTime, required this.userId, required this.diaryTitle, required this.diaryDescription});
  factory _DiaryModel.fromJson(Map<String, dynamic> json) => _$DiaryModelFromJson(json);

@override final  String id;
@override final  DateTime dateTime;
@override final  String userId;
@override final  String diaryTitle;
@override final  String diaryDescription;

/// Create a copy of DiaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiaryModelCopyWith<_DiaryModel> get copyWith => __$DiaryModelCopyWithImpl<_DiaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiaryModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DiaryModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('dateTime', dateTime))..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('diaryTitle', diaryTitle))..add(DiagnosticsProperty('diaryDescription', diaryDescription));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.diaryTitle, diaryTitle) || other.diaryTitle == diaryTitle)&&(identical(other.diaryDescription, diaryDescription) || other.diaryDescription == diaryDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dateTime,userId,diaryTitle,diaryDescription);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DiaryModel(id: $id, dateTime: $dateTime, userId: $userId, diaryTitle: $diaryTitle, diaryDescription: $diaryDescription)';
}


}

/// @nodoc
abstract mixin class _$DiaryModelCopyWith<$Res> implements $DiaryModelCopyWith<$Res> {
  factory _$DiaryModelCopyWith(_DiaryModel value, $Res Function(_DiaryModel) _then) = __$DiaryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime dateTime, String userId, String diaryTitle, String diaryDescription
});




}
/// @nodoc
class __$DiaryModelCopyWithImpl<$Res>
    implements _$DiaryModelCopyWith<$Res> {
  __$DiaryModelCopyWithImpl(this._self, this._then);

  final _DiaryModel _self;
  final $Res Function(_DiaryModel) _then;

/// Create a copy of DiaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dateTime = null,Object? userId = null,Object? diaryTitle = null,Object? diaryDescription = null,}) {
  return _then(_DiaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,diaryTitle: null == diaryTitle ? _self.diaryTitle : diaryTitle // ignore: cast_nullable_to_non_nullable
as String,diaryDescription: null == diaryDescription ? _self.diaryDescription : diaryDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserModel implements DiagnosticableTreeMixin {

 String get userId; String get dateTime; String get firstName; String get middleName; String get lastName;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserModel'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('dateTime', dateTime))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('middleName', middleName))..add(DiagnosticsProperty('lastName', lastName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,dateTime,firstName,middleName,lastName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserModel(userId: $userId, dateTime: $dateTime, firstName: $firstName, middleName: $middleName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String userId, String dateTime, String firstName, String middleName, String lastName
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? dateTime = null,Object? firstName = null,Object? middleName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,middleName: null == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserModel with DiagnosticableTreeMixin implements UserModel {
  const _UserModel({required this.userId, required this.dateTime, required this.firstName, required this.middleName, required this.lastName});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String userId;
@override final  String dateTime;
@override final  String firstName;
@override final  String middleName;
@override final  String lastName;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserModel'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('dateTime', dateTime))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('middleName', middleName))..add(DiagnosticsProperty('lastName', lastName));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,dateTime,firstName,middleName,lastName);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserModel(userId: $userId, dateTime: $dateTime, firstName: $firstName, middleName: $middleName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String userId, String dateTime, String firstName, String middleName, String lastName
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? dateTime = null,Object? firstName = null,Object? middleName = null,Object? lastName = null,}) {
  return _then(_UserModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,middleName: null == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
