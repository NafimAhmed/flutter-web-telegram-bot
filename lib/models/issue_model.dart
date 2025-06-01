





// To parse this JSON data, do
//
//     final issueModel = issueModelFromJson(jsonString);

import 'dart:convert';

IssueModel issueModelFromJson(String str) => IssueModel.fromJson(json.decode(str));

String issueModelToJson(IssueModel data) => json.encode(data.toJson());

class IssueModel {
  int? count;
  List<Result>? results;
  bool? success;
  DateTime? timestamp;

  IssueModel({
    this.count,
    this.results,
    this.success,
    this.timestamp,
  });

  factory IssueModel.fromJson(Map<String, dynamic> json) => IssueModel(
    count: json["count"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    success: json["success"],
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "results": List<dynamic>.from(results!.map((x) => x.toJson())),
    "success": success,
    "timestamp": timestamp?.toIso8601String(),
  };
}

class Result {
  double? amount;
  String? chatId;
  String? operatorId;
  String? operatorName;
  double? rate;
  String? reply;
  DateTime? time;

  Result({
    this.amount,
    this.chatId,
    this.operatorId,
    this.operatorName,
    this.rate,
    this.reply,
    this.time,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    amount: json["amount"],
    chatId: json["chat_id"],
    operatorId: json["operator_id"],
    operatorName: json["operator_name"],
    rate: json["rate"],
    reply: json["reply"],
    time: DateTime.parse(json["time"]),
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "chat_id": chatId,
    "operator_id": operatorId,
    "operator_name": operatorName,
    "rate": rate,
    "reply": reply,
    "time": time?.toIso8601String(),
  };
}
