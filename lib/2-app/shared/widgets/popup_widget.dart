import 'package:check_point/2-app/shared/widgets/button_widget.dart';
import 'package:check_point/2-app/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class PopupWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const PopupWidget({super.key, required this.title, this.onPressed});

  static void openPopup(
      {required BuildContext context, required String title}) {
    showModalBottomSheet(
      context: context,
      builder: (context) => PopupWidget(
        title: title,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextWidget(text: title),
        ButtonWidget(buttonText: 'OK', onPressed: onPressed ?? () => Get.back())
      ],
    );
  }
}
