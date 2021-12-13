import 'package:json_annotation/json_annotation.dart';

import 'transaction_info.dart';

part 'category_info.g.dart';

@JsonSerializable()
class CategoryInfo {
  final String categoryName;
  final int indexCategory;
  List<TransactionInfo> transactions;

  CategoryInfo(
    this.categoryName, 
    this.indexCategory,
    this.transactions,
  );

  factory CategoryInfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryInfoToJson(this);
}