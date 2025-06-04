



// To parse this JSON data, do
//
//     final operatorSummery = operatorSummeryFromJson(jsonString);

import 'dart:convert';

OperatorSummery operatorSummeryFromJson(String str) => OperatorSummery.fromJson(json.decode(str));

String operatorSummeryToJson(OperatorSummery data) => json.encode(data.toJson());

class OperatorSummery {
  List<Result>? results;
  bool? success;
  DateTime? timestamp;

  OperatorSummery({
    this.results,
    this.success,
    this.timestamp,
  });

  factory OperatorSummery.fromJson(Map<String, dynamic> json) => OperatorSummery(
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    success: json["success"],
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(results!.map((x) => x.toJson())),
    "success": success,
    "timestamp": timestamp?.toIso8601String(),
  };
}

class Result {
  List<Deposit>? deposits;
  List<dynamic>? issues;
  String? operatorId;
  String? operatorName;
  Summary? summary;

  Result({
    this.deposits,
    this.issues,
    this.operatorId,
    this.operatorName,
    this.summary,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    deposits: List<Deposit>.from(json["deposits"].map((x) => Deposit.fromJson(x))),
    issues: List<dynamic>.from(json["issues"].map((x) => x)),
    operatorId: json["operator_id"],
    operatorName: json["operator_name"],
    summary: Summary.fromJson(json["summary"]),
  );

  Map<String, dynamic> toJson() => {
    "deposits": List<dynamic>.from(deposits!.map((x) => x.toJson())),
    "issues": List<dynamic>.from(issues!.map((x) => x)),
    "operator_id": operatorId,
    "operator_name": operatorName,
    "summary": summary?.toJson(),
  };
}

class Deposit {
  double? amount;
  String? chatId;
  double? netAmount;
  double? rate;
  DateTime? time;
  double? usdtAmount;

  Deposit({
    this.amount,
    this.chatId,
    this.netAmount,
    this.rate,
    this.time,
    this.usdtAmount,
  });

  factory Deposit.fromJson(Map<String, dynamic> json) => Deposit(
    amount: json["amount"],
    chatId: json["chat_id"],
    netAmount: json["net_amount"],
    rate: json["rate"],
    time: DateTime.parse(json["time"]),
    usdtAmount: json["usdt_amount"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "chat_id": chatId,
    "net_amount": netAmount,
    "rate": rate,
    "time": time?.toIso8601String(),
    "usdt_amount": usdtAmount,
  };
}

class Summary {
  double? balance;
  double? balanceUsdt;
  double? totalDeposits;
  double? totalDepositsUsdt;
  double? totalIssues;
  double? totalIssuesUsdt;

  Summary({
    this.balance,
    this.balanceUsdt,
    this.totalDeposits,
    this.totalDepositsUsdt,
    this.totalIssues,
    this.totalIssuesUsdt,
  });

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
    balance: json["balance"],
    balanceUsdt: json["balance_usdt"].toDouble(),
    totalDeposits: json["total_deposits"],
    totalDepositsUsdt: json["total_deposits_usdt"].toDouble(),
    totalIssues: json["total_issues"],
    totalIssuesUsdt: json["total_issues_usdt"],
  );

  Map<String, dynamic> toJson() => {
    "balance": balance,
    "balance_usdt": balanceUsdt,
    "total_deposits": totalDeposits,
    "total_deposits_usdt": totalDepositsUsdt,
    "total_issues": totalIssues,
    "total_issues_usdt": totalIssuesUsdt,
  };
}
