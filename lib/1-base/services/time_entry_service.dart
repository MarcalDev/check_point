
import 'package:check_point/1-base/models/time_entry.dart';
import 'package:check_point/1-base/services/base_service.dart';
import 'package:check_point/1-base/services/interfaces/itime_entry_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TimeEntryService implements BaseService<TimeEntry>, ITimeEntry{
  @override
  CollectionReference collection = FirebaseFirestore.instance.collection('time_entry');

  @override
  Stream<QuerySnapshot> getStream() {    
    return collection.snapshots();
  }
  
  @override
  Future<DocumentReference> add(TimeEntry model) {
    return collection.add(model.toJson());    
  }
  
  @override
  Future<void> update(TimeEntry model) async{    
    await collection.doc(model.reference!.id).update(model.toJson());  
  } 
}