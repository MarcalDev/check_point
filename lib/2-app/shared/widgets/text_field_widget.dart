import 'package:check_point/2-app/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import '../../util/app_colors.dart';
import '../../util/app_text_fonts.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final String? labelText;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Color? borderColor;
  final double? width;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  const TextFieldWidget(
      {super.key,
      required this.hintText,
      this.labelText,
      this.keyboardType,
      this.isPassword = false,
      this.borderColor,
      this.width,
      this.suffixIcon,
      this.prefixIcon,
      this.maxLines});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    widget.labelText != null
        ? Column(
            children: [
              TextWidget(
                  text: widget.labelText!, textColor: AppColors.blackColor, fontSize: AppTextFonts.textFieldFont),
              const SizedBox(
                height: 8,
              ),
            ],
          )
        : const SizedBox(),
    SizedBox(
      width: widget.width,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        obscureText: widget.isPassword,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: widget.hintText,
          fillColor: AppColors.whiteColor,
          labelStyle: const TextStyle(color: AppColors.blackColor, backgroundColor: Colors.transparent),
          hintStyle: const TextStyle(
            color: AppColors.blackColor,
            backgroundColor: Colors.transparent,
          ),
          isDense: false,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: widget.borderColor ?? AppColors.textFieldBackgroundColor, width: 0.5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide(color: widget.borderColor ?? AppColors.textFieldBackgroundColor)),
        ),
      ),
    ),
      ],
    );
  }
}