



// To parse this JSON data, do
//
//     final summeryModel = summeryModelFromJson(jsonString);

import 'dart:convert';

SummeryModel summeryModelFromJson(String str) => SummeryModel.fromJson(json.decode(str));

String summeryModelToJson(SummeryModel data) => json.encode(data.toJson());

class SummeryModel {
  bool? success;
  Results? results;
  DateTime? timestamp;
  String? message;

  SummeryModel({
    this.success,
    this.results,
    this.timestamp,
    this.message,
  });

  factory SummeryModel.fromJson(Map<String, dynamic> json) => SummeryModel(
    success: json["success"],
    results: Results.fromJson(json["results"]),
    timestamp: DateTime.parse(json["timestamp"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "results": results?.toJson(),
    "timestamp": timestamp?.toIso8601String(),
    "message": message,
  };
}

class Results {
  double? totalTransactions;
  double? totalTransactionsCripto;
  double? totalIssued;
  double? rate;
  double? exchangeRate;
  double? totalIssuedMoney;
  double? totalIssuedUsdt;
  double? notIssuedMoney;
  double? notIssuedCrypto;

  Results({
    this.totalTransactions,
    this.totalTransactionsCripto,
    this.totalIssued,
    this.rate,
    this.exchangeRate,
    this.totalIssuedMoney,
    this.totalIssuedUsdt,
    this.notIssuedMoney,
    this.notIssuedCrypto,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    totalTransactions: json["totalTransactions"],
    totalTransactionsCripto: json["totalTransactionsCripto"].toDouble(),
    totalIssued: json["totalIssued"],
    rate: json["rate"],
    exchangeRate: json["exchangeRate"],
    totalIssuedMoney: json["totalIssuedMoney"],
    totalIssuedUsdt: json["totalIssuedUSDT"],
    notIssuedMoney: json["notIssuedMoney"],
    notIssuedCrypto: json["notIssuedCrypto"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "totalTransactions": totalTransactions,
    "totalTransactionsCripto": totalTransactionsCripto,
    "totalIssued": totalIssued,
    "rate": rate,
    "exchangeRate": exchangeRate,
    "totalIssuedMoney": totalIssuedMoney,
    "totalIssuedUSDT": totalIssuedUsdt,
    "notIssuedMoney": notIssuedMoney,
    "notIssuedCrypto": notIssuedCrypto,
  };
}
