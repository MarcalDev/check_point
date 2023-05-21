import 'package:check_point/2-app/shared/widgets/text_widget.dart';
import 'package:check_point/2-app/util/app_colors.dart';
import 'package:check_point/2-app/util/app_text_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../1-base/enums/check_in_type_enum.dart';
import '../../../util/app_assets.dart';

class HomeCheckInCardWidget extends StatelessWidget {
  final String checkInTime;
  final CheckInType checkInType;

  const HomeCheckInCardWidget({super.key, required this.checkInTime, required this.checkInType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(6.h))
            ),
            padding: EdgeInsets.all(8.h),
            child: SvgPicture.asset(checkInType == CheckInType.checkIn ? AppAssets.exitIcon : AppAssets.enterIcon, height: 15.h,)
          ),
          SizedBox(width: 10.w,),
          TextWidget(text: checkInType == CheckInType.checkIn ? 'Entrada' : "Saída", fontWeight: FontWeight.bold, fontSize: AppTextFonts.cardTitleFont,),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: TextWidget(text: checkInTime, fontSize: AppTextFonts.cardTitleFont, fontWeight: FontWeight.bold,)
              )
              ),
        ],
      ),
    );
  }
}