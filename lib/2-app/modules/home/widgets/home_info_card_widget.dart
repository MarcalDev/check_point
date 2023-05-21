import 'package:check_point/2-app/shared/widgets/text_widget.dart';
import 'package:check_point/2-app/util/app_colors.dart';
import 'package:check_point/2-app/util/app_text_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeInfoCardWidget extends StatelessWidget {
  final String title;
  final String value;
  final String period;
  const HomeInfoCardWidget({super.key, required this.title, required this.value, required this.period});

  @override
  Widget build(BuildContext context) {
    return Container(      
      width: 105.w,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(10.h))
      ),
      padding: EdgeInsets.fromLTRB( 10.w,  35.w,  10.w,  15.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(text: title, fontSize: AppTextFonts.detailTextFont,  fontWeight: FontWeight.w500),
          SizedBox(height: 5.h,),
          TextWidget(text: value, fontWeight: FontWeight.bold, fontSize: AppTextFonts.pageTitleFont,),
          SizedBox(height: 1.h,),
          TextWidget(text: period, fontSize: AppTextFonts.smallTextFont)
        ],
      ),
    );
  }
}