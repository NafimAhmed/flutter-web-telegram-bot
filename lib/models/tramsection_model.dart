



// To parse this JSON data, do
//
//     final transectionModel = transectionModelFromJson(jsonString);

import 'dart:convert';

TransectionModel transectionModelFromJson(String str) => TransectionModel.fromJson(json.decode(str));

String transectionModelToJson(TransectionModel data) => json.encode(data.toJson());

class TransectionModel {
  String? chatId;
  int? count;
  List<Result>? results;
  bool? success;
  DateTime? timestamp;

  TransectionModel({
    this.chatId,
    this.count,
    this.results,
    this.success,
    this.timestamp,
  });

  factory TransectionModel.fromJson(Map<String, dynamic> json) => TransectionModel(
    chatId: json["chat_id"],
    count: json["count"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    success: json["success"],
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "chat_id": chatId,
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
  String? repliedBy;
  DateTime? time;

  Result({
    this.amount,
    this.chatId,
    this.operatorId,
    this.operatorName,
    this.rate,
    this.repliedBy,
    this.time,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    amount: json["amount"],
    chatId: json["chat_id"],
    operatorId: json["operator_id"],
    operatorName: json["operator_name"],
    rate: json["rate"],
    repliedBy: json["replied_by"],
    time: DateTime.parse(json["time"]),
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "chat_id": chatId,
    "operator_id": operatorId,
    "operator_name": operatorName,
    "rate": rate,
    "replied_by": repliedBy,
    "time": time?.toIso8601String(),
  };
}
