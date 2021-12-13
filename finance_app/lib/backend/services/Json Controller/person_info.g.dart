// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonInfo _$PersonInfoFromJson(Map<String, dynamic> json) => PersonInfo(
      json['personId'] as int,
      json['personFirstName'] as String,
      json['personLastName'] as String,
      json['dateRegistration'] as String,
      json['dayOfBirth'] as String,
      json['age'] as int,
      json['login'] as bool,
      (json['category'] as List<dynamic>)
          .map((e) => CategoryInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonInfoToJson(PersonInfo instance) =>
    <String, dynamic>{
      'personId': instance.personId,
      'personFirstName': instance.personFirstName,
      'personLastName': instance.personLastName,
      'dateRegistration': instance.dateRegistration,
      'dayOfBirth': instance.dayOfBirth,
      'age': instance.age,
      'login': instance.login,
      'category': instance.category,
    };
