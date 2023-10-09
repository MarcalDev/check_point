import 'package:check_point/1-base/models/daily_schedule.dart';
import 'package:check_point/1-base/services/base_service.dart';
import 'package:check_point/1-base/services/interfaces/idaily_schedule_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DailyScheduleService implements IDailyScheduleService, BaseService<DailySchedule>{
  @override
  CollectionReference collection = FirebaseFirestore.instance.collection('daily_schedule');

  @override
  Future<DocumentReference> add(DailySchedule model) {
    return collection.add(model.toJson());    
  }

  @override
  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  @override
  Future<void> update(DailySchedule model) async{
    await collection.doc(model.reference!.id).update(model.toJson());  
  }
}