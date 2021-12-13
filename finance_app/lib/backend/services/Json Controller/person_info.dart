import 'package:json_annotation/json_annotation.dart';

import 'category_info.dart';

part 'person_info.g.dart';

@JsonSerializable()
class PersonInfo {
  final int personId;
  final String personFirstName;
  final String personLastName;
  final String dateRegistration;
  final String dayOfBirth;
  final int age;
  final bool login;
  List<CategoryInfo> category;

  PersonInfo(
    this.personId,
    this.personFirstName,
    this.personLastName,
    this.dateRegistration,
    this.dayOfBirth,
    this.age,
    this.login,
    this.category,
  );

  factory PersonInfo.fromJson(Map<String, dynamic> json) =>
      _$PersonInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PersonInfoToJson(this);
}
