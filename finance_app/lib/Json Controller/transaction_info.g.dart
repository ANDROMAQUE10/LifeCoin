// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionInfo _$TransactionInfoFromJson(Map<String, dynamic> json) =>
    TransactionInfo(
      json['index'] as int,
      json['transactionsName'] as String,
      json['transactionDate'] as String,
      json['transactionAmount'] as int,
      json['transactionComment'] as String,
    );

Map<String, dynamic> _$TransactionInfoToJson(TransactionInfo instance) =>
    <String, dynamic>{
      'index': instance.index,
      'transactionsName': instance.transactionsName,
      'transactionDate': instance.transactionDate,
      'transactionAmount': instance.transactionAmount,
      'transactionComment': instance.transactionComment,
    };
