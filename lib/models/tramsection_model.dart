



// To parse this JSON data, do
//
//     final transectionModel = transectionModelFromJson(jsonString);

import 'dart:convert';

TransectionModel transectionModelFromJson(String str) => TransectionModel.fromJson(json.decode(str));

String transectionModelToJson(TransectionModel data) => json.encode(data.toJson());

class TransectionModel {
  bool? success;
  List<Result>? results;
  int? count;
  DateTime? timestamp;

  TransectionModel({
    this.success,
    this.results,
    this.count,
    this.timestamp,
  });

  factory TransectionModel.fromJson(Map<String, dynamic> json) => TransectionModel(
    success: json["success"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    count: json["count"],
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "results": List<dynamic>.from(results!.map((x) => x.toJson())),
    "count": count,
    "timestamp": timestamp?.toIso8601String(),
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
