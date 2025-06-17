


// To parse this JSON data, do
//
//     final summeryModel = summeryModelFromJson(jsonString);

import 'dart:convert';

SummeryModel summeryModelFromJson(String str) => SummeryModel.fromJson(json.decode(str));

String summeryModelToJson(SummeryModel data) => json.encode(data.toJson());

class SummeryModel {
  Results? results;
  bool? success;

  SummeryModel({
    this.results,
    this.success,
  });

  factory SummeryModel.fromJson(Map<String, dynamic> json) => SummeryModel(
    results: Results.fromJson(json["results"]),
    success: json["success"],
  );

  Map<String, dynamic> toJson() => {
    "results": results?.toJson(),
    "success": success,
  };
}

class Results {
  String? chatId;
  double? exchangeRate;
  double? feePercentage;
  bool? isSpecificChat;
  Issued? issued;
  Removed? removed;
  Issued? shouldIssue;
  Statistics? statistics;
  Issued? unissued;

  Results({
    this.chatId,
    this.exchangeRate,
    this.feePercentage,
    this.isSpecificChat,
    this.issued,
    this.removed,
    this.shouldIssue,
    this.statistics,
    this.unissued,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    chatId: json["chat_id"],
    exchangeRate: json["exchange_rate"],
    feePercentage: json["fee_percentage"],
    isSpecificChat: json["is_specific_chat"],
    issued: Issued.fromJson(json["issued"]),
    removed: Removed.fromJson(json["removed"]),
    shouldIssue: Issued.fromJson(json["should_issue"]),
    statistics: Statistics.fromJson(json["statistics"]),
    unissued: Issued.fromJson(json["unissued"]),
  );

  Map<String, dynamic> toJson() => {
    "chat_id": chatId,
    "exchange_rate": exchangeRate,
    "fee_percentage": feePercentage,
    "is_specific_chat": isSpecificChat,
    "issued": issued?.toJson(),
    "removed": removed?.toJson(),
    "should_issue": shouldIssue?.toJson(),
    "statistics": statistics?.toJson(),
    "unissued": unissued?.toJson(),
  };
}

class Issued {
  double? cny;
  String? description;
  double? usdt;
  double? count;

  Issued({
    this.cny,
    this.description,
    this.usdt,
    this.count,
  });

  factory Issued.fromJson(Map<String, dynamic> json) => Issued(
    cny: json["cny"],
    description: json["description"],
    usdt: json["usdt"].toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "cny": cny,
    "description": description,
    "usdt": usdt,
    "count": count,
  };
}

class Removed {
  Issued? deposits;
  Issued? issues;

  Removed({
    this.deposits,
    this.issues,
  });

  factory Removed.fromJson(Map<String, dynamic> json) => Removed(
    deposits: Issued.fromJson(json["deposits"]),
    issues: Issued.fromJson(json["issues"]),
  );

  Map<String, dynamic> toJson() => {
    "deposits": deposits?.toJson(),
    "issues": issues?.toJson(),
  };
}

class Statistics {
  double? totalDepositAfterFee;
  double? totalDepositAmount;
  double? totalIssued;
  double? totalTransactions;

  Statistics({
    this.totalDepositAfterFee,
    this.totalDepositAmount,
    this.totalIssued,
    this.totalTransactions,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
    totalDepositAfterFee: json["total_deposit_after_fee"],
    totalDepositAmount: json["total_deposit_amount"],
    totalIssued: json["total_issued"],
    totalTransactions: json["total_transactions"],
  );

  Map<String, dynamic> toJson() => {
    "total_deposit_after_fee": totalDepositAfterFee,
    "total_deposit_amount": totalDepositAmount,
    "total_issued": totalIssued,
    "total_transactions": totalTransactions,
  };
}
