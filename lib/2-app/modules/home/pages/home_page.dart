import 'package:check_point/2-app/shared/widgets/text_widget.dart';
import 'package:check_point/2-app/util/app_text_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../1-base/enums/check_in_type_enum.dart';
import '../../../util/app_colors.dart';
import '../../../util/app_formaters.dart';
import '../widgets/home_background_widget.dart';
import '../widgets/home_check_in_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeBackgroundWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 25.w),
        child: Column(        
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(text: 'Pontos de Hoje', fontSize: AppTextFonts.pageTitleFont, fontWeight: FontWeight.w600),
                TextWidget(text: 'Ver mais', fontSize: AppTextFonts.detailTextFont, fontWeight: FontWeight.w500),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                return Column(
                  children: [    
                    HomeCheckInCardWidget(
                  checkInTime: AppFormaters.timeToString(DateTime.now()),
                  checkInType: index % 2 == 0 ? CheckInType.checkIn : CheckInType.checkOut,
                ),
                index != 3 ?
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Container(
                    color: AppColors.lightGreyColor,
                    height: 0.4.h,
                  ),
                ) : const SizedBox()
                  ],
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}