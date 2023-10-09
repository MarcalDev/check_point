import 'dart:async';

import 'package:check_point/1-base/services/base_service.dart';
import 'package:check_point/1-base/services/interfaces/iuser_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService implements IUserService, BaseService<User> {
  @override
  CollectionReference collection =
      FirebaseFirestore.instance.collection('daily_schedule');

  @override
  Future<DocumentReference<Object?>> add(User model) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Stream<QuerySnapshot<Object?>> getStream() {
    // TODO: implement getStream
    throw UnimplementedError();
  }

  @override
  Future<void> update(User model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> changePassword() {
    // TODO: implement changePassword
    throw UnimplementedError();
  }

  @override
  FutureOr<dynamic> login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
  }
}
