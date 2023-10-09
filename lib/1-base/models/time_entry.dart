import 'package:check_point/1-base/enums/check_in_type_enum.dart';
import 'package:check_point/1-base/models/base_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TimeEntry extends BaseModel {
  // late String id;
  late DateTime date;
  late CheckInType turn;
  late String dailyScheduleId;

  late DocumentReference? reference;

  TimeEntry(
      {required this.date,
      required this.turn,
      required this.dailyScheduleId,
      this.reference,
      required super.createdDate,
      required super.updatedDate,
      super.isDeleted,
      super.isActive});

  factory TimeEntry.fromSnapshot(DocumentSnapshot snapshot) {
    TimeEntry newTimeEntry =
        TimeEntry.fromJson(snapshot.data as Map<String, dynamic>);
    newTimeEntry.reference = snapshot.reference;
    return newTimeEntry;
  }

  factory TimeEntry.fromJson(Map<String, dynamic> json) =>
      _timeEntryFromJson(json);

  Map<String, dynamic> toJson() => _timeEntryToJson(this);

  @override
  String toString() => "TimeEntry<$TimeEntry>";
}

TimeEntry _timeEntryFromJson(Map<String, dynamic> json) {
  return TimeEntry(
    date: json['date'] as DateTime,
    turn: json['turn'] as CheckInType,
    dailyScheduleId: json['turn'] as String,
    createdDate: json['createdDate'] as DateTime,
    updatedDate:
        json['updatedDate'] == null ? null : json['updatedDate'] as DateTime,
    isDeleted: json['isDeleted'] as bool,
    isActive: json['isActive'] as bool,
  );
}

Map<String, dynamic> _timeEntryToJson(TimeEntry instance) => <String, dynamic>{
      'date': instance.date.toString(),
      'turn': instance.turn.index.toString(),
      'dailyScheduleId': instance.dailyScheduleId.toString(),
      'createdDate': instance.createdDate.toString(),
      'updatedDate': instance.updatedDate.toString(),
      'isDeleted': instance.isDeleted,
      'isActive': instance.isDeleted,
    };
