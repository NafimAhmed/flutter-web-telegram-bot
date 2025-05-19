


// To parse this JSON data, do
//
//     final issueModel = issueModelFromJson(jsonString);

import 'dart:convert';

IssueModel issueModelFromJson(String str) => IssueModel.fromJson(json.decode(str));

String issueModelToJson(IssueModel data) => json.encode(data.toJson());

class IssueModel {
  bool? success;
  List<Result>? results;
  int? count;
  DateTime? timestamp;
  String? message;

  IssueModel({
    this.success,
    this.results,
    this.count,
    this.timestamp,
    this.message,
  });

  factory IssueModel.fromJson(Map<String, dynamic> json) => IssueModel(
    success: json["success"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    count: json["count"],
    timestamp: DateTime.parse(json["timestamp"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "results": List<dynamic>.from(results!.map((x) => x.toJson())),
    "count": count,
    "timestamp": timestamp?.toIso8601String(),
    "message": message,
  };
}

class Result {
  double? amount;
  double? rate;

  Result({
    this.amount,
    this.rate,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    amount: json["amount"],
    rate: json["rate"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "rate": rate,
  };
}
