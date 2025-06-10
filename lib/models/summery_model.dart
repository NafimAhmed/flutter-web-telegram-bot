




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
  bool? isSpecificChat;
  double? netNotIssuedCrypto;
  double? netNotIssuedMoney;
  double? rate;
  double? removedDepositMoney;
  double? removedDepositUsdt;
  double? removedIssueMoney;
  double? removedIssueUsdt;
  double? totalIssued;
  double? totalIssuedMoney;
  double? totalIssuedUsdt;
  double? totalTransactions;
  double? totalTransactionsAfterFee;
  double? totalTransactionsCrypto;

  Results({
    this.chatId,
    this.exchangeRate,
    this.isSpecificChat,
    this.netNotIssuedCrypto,
    this.netNotIssuedMoney,
    this.rate,
    this.removedDepositMoney,
    this.removedDepositUsdt,
    this.removedIssueMoney,
    this.removedIssueUsdt,
    this.totalIssued,
    this.totalIssuedMoney,
    this.totalIssuedUsdt,
    this.totalTransactions,
    this.totalTransactionsAfterFee,
    this.totalTransactionsCrypto,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    chatId: json["chat_id"],
    exchangeRate: json["exchangeRate"],
    isSpecificChat: json["isSpecificChat"],
    netNotIssuedCrypto: json["netNotIssuedCrypto"].toDouble(),
    netNotIssuedMoney: json["netNotIssuedMoney"],
    rate: json["rate"],
    removedDepositMoney: json["removedDepositMoney"],
    removedDepositUsdt: json["removedDepositUSDT"],
    removedIssueMoney: json["removedIssueMoney"],
    removedIssueUsdt: json["removedIssueUSDT"],
    totalIssued: json["totalIssued"],
    totalIssuedMoney: json["totalIssuedMoney"],
    totalIssuedUsdt: json["totalIssuedUSDT"],
    totalTransactions: json["totalTransactions"],
    totalTransactionsAfterFee: json["totalTransactionsAfterFee"],
    totalTransactionsCrypto: json["totalTransactionsCrypto"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "chat_id": chatId,
    "exchangeRate": exchangeRate,
    "isSpecificChat": isSpecificChat,
    "netNotIssuedCrypto": netNotIssuedCrypto,
    "netNotIssuedMoney": netNotIssuedMoney,
    "rate": rate,
    "removedDepositMoney": removedDepositMoney,
    "removedDepositUSDT": removedDepositUsdt,
    "removedIssueMoney": removedIssueMoney,
    "removedIssueUSDT": removedIssueUsdt,
    "totalIssued": totalIssued,
    "totalIssuedMoney": totalIssuedMoney,
    "totalIssuedUSDT": totalIssuedUsdt,
    "totalTransactions": totalTransactions,
    "totalTransactionsAfterFee": totalTransactionsAfterFee,
    "totalTransactionsCrypto": totalTransactionsCrypto,
  };
}
