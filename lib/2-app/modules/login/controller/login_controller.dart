import 'package:check_point/2-app/modules/home/pages/main_menu_page.dart';
import 'package:check_point/2-app/shared/widgets/popup_widget.dart';
import 'package:check_point/2-app/util/app_info.dart';
import 'package:check_point/2-app/util/base_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginController extends BaseController {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  controllerInitializer() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void validateLogin(BuildContext context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
      AppInfo.actualUser = credential.user;
      Get.to(() => const MainMenuPage());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      PopupWidget.openPopup(context: context, title: e.code);
    } catch (e) {
      print(e);
      PopupWidget.openPopup(context: context, title: e.toString());
    }
  }
}
