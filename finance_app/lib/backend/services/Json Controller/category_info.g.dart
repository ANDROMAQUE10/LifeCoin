// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryInfo _$CategoryInfoFromJson(Map<String, dynamic> json) => CategoryInfo(
      json['categoryName'] as String,
      json['indexCategory'] as int,
      (json['transactions'] as List<dynamic>)
          .map((e) => TransactionInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryInfoToJson(CategoryInfo instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'indexCategory': instance.indexCategory,
      'transactions': instance.transactions,
    };
