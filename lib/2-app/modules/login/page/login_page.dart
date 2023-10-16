import 'package:check_point/2-app/modules/login/controller/login_controller.dart';
import 'package:check_point/2-app/shared/widgets/button_widget.dart';
import 'package:check_point/2-app/shared/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            TextFieldWidget(
                textEditingController: controller.emailController,
                hintText: 'E-mail',
                labelText: 'E-mail'),
            TextFieldWidget(
                textEditingController: controller.passwordController,
                hintText: 'Password',
                labelText: 'Password'),
            ButtonWidget(
                buttonText: 'LOGIN',
                onPressed: () => controller.validateLogin(context))
          ],
        ),
      ),
    );
  }
}
