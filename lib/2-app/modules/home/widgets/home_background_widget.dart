import 'package:check_point/1-base/enums/check_in_type_enum.dart';
import 'package:check_point/2-app/util/app_colors.dart';
import 'package:check_point/2-app/util/app_formaters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_check_in_card_widget.dart';


class HomeBackgroundWidget extends StatefulWidget {
  final Widget child;
  const HomeBackgroundWidget({super.key, required this.child});

  @override
  State<HomeBackgroundWidget> createState() => _HomeBackgroundWidgetState();
}

class _HomeBackgroundWidgetState extends State<HomeBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Column(children: [
            widget.child,
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
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 2.h),
                  child: Container(
                    color: AppColors.lightGreyColor,
                    height: 0.5.h,
                  ),
                ) : SizedBox()
                  ],
                );
              },),
            )
          ]),
        ),
      ),
    );
  }
}