import 'package:check_point/2-app/shared/widgets/text_widget.dart';
import 'package:check_point/2-app/util/app_assets.dart';
import 'package:check_point/2-app/util/app_colors.dart';
import 'package:check_point/2-app/util/app_text_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'home_info_card_widget.dart';

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
          body: Container(
            color: AppColors.lightGreyColor,
            child: Padding(
              padding: EdgeInsets.only(top: 30.h,),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: SvgPicture.asset(AppAssets.exitIcon),
                          ),
                          // SizedBox(width: 10.w,),
                          // TextWidget(text: 'Bom Dia, João', textColor: AppColors.whiteColor, fontSize: AppTextFonts.cardTitleFont, fontWeight: FontWeight.bold,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         TextWidget(text:'Bom dia, João!', fontSize: AppTextFonts.pageTitleFont, fontWeight: FontWeight.bold),
                    SizedBox(height: 2.h,),
                    TextWidget(text: '20 de Maio de 2023', fontSize: AppTextFonts.detailTextFont, fontWeight: FontWeight.w600),
                      ],
                    ),
                  ),     
                  SizedBox(height: 25.w),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeInfoCardWidget(title: 'Horas Extras', value: '03h30m', period: 'Últimos 30 dias'),
                      SizedBox(width: 10.w),
                      HomeInfoCardWidget(title: 'Faltas', value: '05', period: 'Últimos 30 dias'),
                      SizedBox(width: 10.w),
                      HomeInfoCardWidget(title: 'Atrasos', value: '02', period: 'Últimos 30 dias'),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft:  Radius.circular(25.h), topRight:  Radius.circular(25.h)),
                          color: AppColors.whiteColor 
                        ),
                        height: MediaQuery.of(context).size.height / 2,
                        child: widget.child,                
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
    );
  }
}