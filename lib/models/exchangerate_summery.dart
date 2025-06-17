//
//
// // To parse this JSON data, do
// //
// //     final exchangeRateSummery = exchangeRateSummeryFromJson(jsonString);
//
// import 'dart:convert';
//
// ExchangeRateSummery exchangeRateSummeryFromJson(String str) => ExchangeRateSummery.fromJson(json.decode(str));
//
// String exchangeRateSummeryToJson(ExchangeRateSummery data) => json.encode(data.toJson());
//
// class ExchangeRateSummery {
//   List<Result>? results;
//   bool? success;
//   DateTime? timestamp;
//
//   ExchangeRateSummery({
//     this.results,
//     this.success,
//     this.timestamp,
//   });
//
//   factory ExchangeRateSummery.fromJson(Map<String, dynamic> json) => ExchangeRateSummery(
//     results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
//     success: json["success"],
//     timestamp: DateTime.parse(json["timestamp"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "results": List<dynamic>.from(results!.map((x) => x.toJson())),
//     "success": success,
//     "timestamp": timestamp?.toIso8601String(),
//   };
// }
//
// class Result {
//   List<Deposit>? deposits;
//   double? exchangeRate;
//   List<Issue>? issues;
//   Summary? summary;
//
//   Result({
//     this.deposits,
//     this.exchangeRate,
//     this.issues,
//     this.summary,
//   });
//
//   factory Result.fromJson(Map<String, dynamic> json) => Result(
//     deposits: List<Deposit>.from(json["deposits"].map((x) => Deposit.fromJson(x))),
//     exchangeRate: json["exchange_rate"],
//     issues: List<Issue>.from(json["issues"].map((x) => Issue.fromJson(x))),
//     summary: Summary.fromJson(json["summary"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "deposits": List<dynamic>.from(deposits!.map((x) => x.toJson())),
//     "exchange_rate": exchangeRate,
//     "issues": List<dynamic>.from(issues!.map((x) => x.toJson())),
//     "summary": summary?.toJson(),
//   };
// }
//
// class Deposit {
//   double? amount;
//   String? chatId;
//   double? netAmount;
//   String? operatorName;
//   DateTime? time;
//   double? usdtAmount;
//
//   Deposit({
//     this.amount,
//     this.chatId,
//     this.netAmount,
//     this.operatorName,
//     this.time,
//     this.usdtAmount,
//   });
//
//   factory Deposit.fromJson(Map<String, dynamic> json) => Deposit(
//     amount: json["amount"],
//     chatId: json["chat_id"],
//     netAmount: json["net_amount"],
//     operatorName: json["operator_name"],
//     time: DateTime.parse(json["time"]),
//     usdtAmount: json["usdt_amount"].toDouble(),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "amount": amount,
//     "chat_id": chatId,
//     "net_amount": netAmount,
//     "operator_name": operatorName,
//     "time": time?.toIso8601String(),
//     "usdt_amount": usdtAmount,
//   };
// }
//
// class Issue {
//   String? chatId;
//   double? cnyAmount;
//   String? operatorName;
//   DateTime? time;
//   double? usdtAmount;
//
//   Issue({
//     this.chatId,
//     this.cnyAmount,
//     this.operatorName,
//     this.time,
//     this.usdtAmount,
//   });
//
//   factory Issue.fromJson(Map<String, dynamic> json) => Issue(
//     chatId: json["chat_id"],
//     cnyAmount: json["cny_amount"],
//     operatorName: json["operator_name"],
//     time: DateTime.parse(json["time"]),
//     usdtAmount: json["usdt_amount"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "chat_id": chatId,
//     "cny_amount": cnyAmount,
//     "operator_name": operatorName,
//     "time": time?.toIso8601String(),
//     "usdt_amount": usdtAmount,
//   };
// }
//
// class Summary {
//   double? balance;
//   double? balanceUsdt;
//   double? totalDeposits;
//   double? totalDepositsUsdt;
//   double? totalIssues;
//   double? totalIssuesUsdt;
//   double? uniqueOperators;
//
//   Summary({
//     this.balance,
//     this.balanceUsdt,
//     this.totalDeposits,
//     this.totalDepositsUsdt,
//     this.totalIssues,
//     this.totalIssuesUsdt,
//     this.uniqueOperators,
//   });
//
//   factory Summary.fromJson(Map<String, dynamic> json) => Summary(
//     balance: json["balance"],
//     balanceUsdt: json["balance_usdt"].toDouble(),
//     totalDeposits: json["total_deposits"],
//     totalDepositsUsdt: json["total_deposits_usdt"].toDouble(),
//     totalIssues: json["total_issues"],
//     totalIssuesUsdt: json["total_issues_usdt"],
//     uniqueOperators: json["unique_operators"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "balance": balance,
//     "balance_usdt": balanceUsdt,
//     "total_deposits": totalDeposits,
//     "total_deposits_usdt": totalDepositsUsdt,
//     "total_issues": totalIssues,
//     "total_issues_usdt": totalIssuesUsdt,
//     "unique_operators": uniqueOperators,
//   };
// }



// To parse this JSON data, do
//
//     final transectionModel = transectionModelFromJson(jsonString);





// To parse this JSON data, do
//
//     final exchangeRateSummery = exchangeRateSummeryFromJson(jsonString);

import 'dart:convert';

ExchangeRateSummery exchangeRateSummeryFromJson(String str) => ExchangeRateSummery.fromJson(json.decode(str));

String exchangeRateSummeryToJson(ExchangeRateSummery data) => json.encode(data.toJson());

class ExchangeRateSummery {
  GrandTotals? grandTotals;
  List<Result>? results;
  bool? success;
  DateTime? timestamp;

  ExchangeRateSummery({
    this.grandTotals,
    this.results,
    this.success,
    this.timestamp,
  });

  factory ExchangeRateSummery.fromJson(Map<String, dynamic> json) => ExchangeRateSummery(
    grandTotals: GrandTotals.fromJson(json["grand_totals"]),
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    success: json["success"],
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "grand_totals": grandTotals?.toJson(),
    "results": List<dynamic>.from(results!.map((x) => x.toJson())),
    "success": success,
    "timestamp": timestamp?.toIso8601String(),
  };
}

class GrandTotals {
  String? chatId;
  bool? isSpecificChat;
  double? netBalanceCny;
  double? netBalanceUsdt;
  double? totalDepositsAfterFee;
  double? totalDepositsBeforeFee;
  double? totalDepositsUsdt;
  double? totalFeeAmount;
  double? totalIssuesCny;
  double? totalIssuesUsdt;

  GrandTotals({
    this.chatId,
    this.isSpecificChat,
    this.netBalanceCny,
    this.netBalanceUsdt,
    this.totalDepositsAfterFee,
    this.totalDepositsBeforeFee,
    this.totalDepositsUsdt,
    this.totalFeeAmount,
    this.totalIssuesCny,
    this.totalIssuesUsdt,
  });

  factory GrandTotals.fromJson(Map<String, dynamic> json) => GrandTotals(
    chatId: json["chat_id"],
    isSpecificChat: json["is_specific_chat"],
    netBalanceCny: json["net_balance_cny"],
    netBalanceUsdt: json["net_balance_usdt"],
    totalDepositsAfterFee: json["total_deposits_after_fee"],
    totalDepositsBeforeFee: json["total_deposits_before_fee"],
    totalDepositsUsdt: json["total_deposits_usdt"],
    totalFeeAmount: json["total_fee_amount"],
    totalIssuesCny: json["total_issues_cny"],
    totalIssuesUsdt: json["total_issues_usdt"],
  );

  Map<String, dynamic> toJson() => {
    "chat_id": chatId,
    "is_specific_chat": isSpecificChat,
    "net_balance_cny": netBalanceCny,
    "net_balance_usdt": netBalanceUsdt,
    "total_deposits_after_fee": totalDepositsAfterFee,
    "total_deposits_before_fee": totalDepositsBeforeFee,
    "total_deposits_usdt": totalDepositsUsdt,
    "total_fee_amount": totalFeeAmount,
    "total_issues_cny": totalIssuesCny,
    "total_issues_usdt": totalIssuesUsdt,
  };
}

class Result {
  List<Deposit>? deposits;
  double? exchangeRate;
  List<Issue>? issues;
  Map<String, double>? summary;

  Result({
    this.deposits,
    this.exchangeRate,
    this.issues,
    this.summary,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    deposits: List<Deposit>.from(json["deposits"].map((x) => Deposit.fromJson(x))),
    exchangeRate: json["exchange_rate"],
    issues: List<Issue>.from(json["issues"].map((x) => Issue.fromJson(x))),
    summary: Map.from(json["summary"]).map((k, v) => MapEntry<String, double>(k, v)),
  );

  Map<String, dynamic> toJson() => {
    "deposits": List<dynamic>.from(deposits!.map((x) => x.toJson())),
    "exchange_rate": exchangeRate,
    "issues": List<dynamic>.from(issues!.map((x) => x.toJson())),
    "summary": Map.from(summary!).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}

class Deposit {
  double? amount;
  String? chatId;
  double? feeAmount;
  double? netAmount;
  String? operatorName;
  DateTime? time;
  double? usdtAmount;

  Deposit({
    this.amount,
    this.chatId,
    this.feeAmount,
    this.netAmount,
    this.operatorName,
    this.time,
    this.usdtAmount,
  });

  factory Deposit.fromJson(Map<String, dynamic> json) => Deposit(
    amount: json["amount"],
    chatId: json["chat_id"],
    feeAmount: json["fee_amount"],
    netAmount: json["net_amount"],
    operatorName: json["operator_name"],
    time: DateTime.parse(json["time"]),
    usdtAmount: json["usdt_amount"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "chat_id": chatId,
    "fee_amount": feeAmount,
    "net_amount": netAmount,
    "operator_name": operatorName,
    "time": time?.toIso8601String(),
    "usdt_amount": usdtAmount,
  };
}

class Issue {
  String? chatId;
  double? cnyAmount;
  String? operatorName;
  DateTime? time;
  double? usdtAmount;

  Issue({
    this.chatId,
    this.cnyAmount,
    this.operatorName,
    this.time,
    this.usdtAmount,
  });

  factory Issue.fromJson(Map<String, dynamic> json) => Issue(
    chatId: json["chat_id"],
    cnyAmount: json["cny_amount"],
    operatorName: json["operator_name"],
    time: DateTime.parse(json["time"]),
    usdtAmount: json["usdt_amount"],
  );

  Map<String, dynamic> toJson() => {
    "chat_id": chatId,
    "cny_amount": cnyAmount,
    "operator_name": operatorName,
    "time": time?.toIso8601String(),
    "usdt_amount": usdtAmount,
  };
}
