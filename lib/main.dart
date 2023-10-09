import 'package:check_point/1-base/enums/check_in_type_enum.dart';
import 'package:check_point/1-base/models/time_entry.dart';
import 'package:check_point/1-base/services/time_entry_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '2-app/modules/home/pages/main_menu_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await login();
  await addNewRow();
  await ScreenUtil.ensureScreenSize();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    builder: (ctx, child) {
      ScreenUtil.init(ctx);
      return Theme(
        data: ThemeData(),
        child: const MainMenuPage(),
      );
    },
  ));
}

Future<void> createUser() async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: 'joao@email.com',
      password: '123456',
    );
  } catch (e) {
    print(e);
  }
}

Future<void> login() async {
  // try{
  //   final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //   email: 'joao@email.com',
  //   password: '123456'
  // );
  // }on FirebaseAuthException catch (e) {
  //   if (e.code == 'user-not-found') {
  //     print('No user found for that email.');
  //   } else if (e.code == 'wrong-password') {
  //     print('Wrong password provided for that user.');
  //   }
  // }
}

Future<void> addNewRow() async {
  // try {
  //   final TimeEntryService service = TimeEntryService();
  //   TimeEntry newTimeEntry = TimeEntry(
  //       date: DateTime.now(),
  //       turn: CheckInType.checkIn,
  //       createdDate: DateTime.now(),
  //       updatedDate: null);
  //   service.add(newTimeEntry);
  // } catch (e) {
  //   print(e);
  // }
}

Future<void> updateRow() async {
  // try {
  //   final TimeEntryService service = TimeEntryService();
  //   TimeEntry newTimeEntry = TimeEntry(
  //       date: DateTime.now(),
  //       turn: CheckInType.checkIn,
  //       createdDate: DateTime.now(),
  //       updatedDate: DateTime.now());
  //   service.update(newTimeEntry);
  // } catch (e) {
  //   print(e);
  // }
}
