import 'package:json_annotation/json_annotation.dart';

part 'transaction_info.g.dart';

@JsonSerializable()
class TransactionInfo {
  final int index;
  final String transactionsName;
  final String transactionDate;
  final int transactionAmount;
  final String transactionComment;

  TransactionInfo(
    this.index, 
    this.transactionsName, 
    this.transactionDate,
    this.transactionAmount, 
    this.transactionComment
  );

  factory TransactionInfo.fromJson(Map<String, dynamic> json) =>
      _$TransactionInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionInfoToJson(this);
}
