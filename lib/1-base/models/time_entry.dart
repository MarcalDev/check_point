import 'package:check_point/1-base/enums/check_in_type_enum.dart';
import 'package:check_point/1-base/models/base_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TimeEntry extends BaseModel{
  // late String id;
  late DateTime date;
  late CheckInType turn;

  late DocumentReference? reference;

  TimeEntry({required this.date,required this.turn, this.reference, required super.createdDate, required super.updatedDate});

  factory TimeEntry.fromSnapshot(DocumentSnapshot snapshot){
    TimeEntry newTimeEntry = TimeEntry.fromJson(snapshot.data as Map<String, dynamic>);
    newTimeEntry.reference = snapshot.reference;
    return newTimeEntry;
  }

  factory TimeEntry.fromJson(Map<String, dynamic> json) => _TimeEntryFromJson(json);

  Map<String, dynamic> toJson() => _TimeEntryToJson(this);

  String toString() => "TimeEntry<$TimeEntry>";
}

TimeEntry _TimeEntryFromJson(Map<String,dynamic> json){
  return TimeEntry(
    date: json['date'] as DateTime, 
    turn: json['turn'] as CheckInType, 
    createdDate: json['createdDate'] as DateTime,
    updatedDate: json['updatedDate'] == null ? null : json['updatedDate'] as DateTime);
}

Map<String, dynamic> _TimeEntryToJson(TimeEntry instance) =>
  <String, dynamic>{
    'date' : instance.date.toString(),
    'turn' : instance.turn.index.toString(),
    'createdDate' : instance.createdDate.toString(),
    'updatedDate' : instance.updatedDate.toString(),
};