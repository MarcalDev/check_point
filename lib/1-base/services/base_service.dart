import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseService<T> {
  late final CollectionReference collection; 
  Future<DocumentReference> add(T model);  
  Future<void> update(T model);
  Stream<QuerySnapshot> getStream(){
    return collection.snapshots();
  }
}