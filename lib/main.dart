import 'package:check_point/2-app/modules/login/page/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await ScreenUtil.ensureScreenSize();
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        builder: (context, child) => const LoginPage(),
      )));
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
