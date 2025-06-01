



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
  int? exchangeRate;
  double? notIssuedCrypto;
  int? notIssuedMoney;
  int? rate;
  int? totalIssued;
  int? totalIssuedMoney;
  int? totalIssuedUsdt;
  int? totalTransactions;
  double? totalTransactionsCripto;

  Results({
    this.exchangeRate,
    this.notIssuedCrypto,
    this.notIssuedMoney,
    this.rate,
    this.totalIssued,
    this.totalIssuedMoney,
    this.totalIssuedUsdt,
    this.totalTransactions,
    this.totalTransactionsCripto,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    exchangeRate: json["exchangeRate"],
    notIssuedCrypto: json["notIssuedCrypto"].toDouble(),
    notIssuedMoney: json["notIssuedMoney"],
    rate: json["rate"],
    totalIssued: json["totalIssued"],
    totalIssuedMoney: json["totalIssuedMoney"],
    totalIssuedUsdt: json["totalIssuedUSDT"],
    totalTransactions: json["totalTransactions"],
    totalTransactionsCripto: json["totalTransactionsCripto"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "exchangeRate": exchangeRate,
    "notIssuedCrypto": notIssuedCrypto,
    "notIssuedMoney": notIssuedMoney,
    "rate": rate,
    "totalIssued": totalIssued,
    "totalIssuedMoney": totalIssuedMoney,
    "totalIssuedUSDT": totalIssuedUsdt,
    "totalTransactions": totalTransactions,
    "totalTransactionsCripto": totalTransactionsCripto,
  };
}
