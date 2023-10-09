import 'package:check_point/1-base/models/base_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DailySchedule extends BaseModel {
  late DateTime date;
  late Timestamp balance;
  late Timestamp totalTime;

  late DocumentReference? reference;

  DailySchedule(
      {required this.date,
      required this.balance,
      required this.totalTime,
      required super.createdDate,
      required super.updatedDate,
      super.isDeleted,
      super.isActive});

  factory DailySchedule.fromSnapshot(DocumentSnapshot snapshot) {
    DailySchedule newDailySchedule =
        DailySchedule.fromJson(snapshot.data as Map<String, dynamic>);
    newDailySchedule.reference = snapshot.reference;
    return newDailySchedule;
  }
  factory DailySchedule.fromJson(Map<String, dynamic> json) =>
      _dailyScheduleFromJson(json);

  Map<String, dynamic> toJson() => _dailyScheduleToJson(this);

  @override
  String toString() => "DailySchedule<$DailySchedule>";
}

DailySchedule _dailyScheduleFromJson(Map<String, dynamic> json) {
  return DailySchedule(
    date: json['date'] as DateTime,
    balance: json['balance'] as Timestamp,
    totalTime: json['totalTime'] as Timestamp,
    createdDate: json['createdDate'] as DateTime,
    updatedDate:
        json['updatedDate'] == null ? null : json['updatedDate'] as DateTime,
    isDeleted: json['isDeleted'] as bool,
    isActive: json['isActive'] as bool,
  );
}

Map<String, dynamic> _dailyScheduleToJson(DailySchedule instance) =>
    <String, dynamic>{
      'date': instance.date.toString(),
      'balance': instance.balance.toString(),
      'createdDate': instance.createdDate.toString(),
      'updatedDate': instance.updatedDate.toString(),
      'isDeleted': instance.isDeleted,
      'isActive': instance.isDeleted,
    };
