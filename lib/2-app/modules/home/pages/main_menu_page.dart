import 'package:check_point/2-app/modules/home/controllers/main_menu_controller.dart';
import 'package:check_point/2-app/util/app_text_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:navigation_bar_milo/navigation_bar_milo.dart';
import 'package:navigation_bar_milo/utils/app_colors.dart';
import '../../../util/app_assets.dart';
import 'home_page.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  MainMenuController controller = Get.put(MainMenuController());

  List<Widget> screenList = const[
       HomePage(),
      HomePage(),
      HomePage(),
      HomePage(),
    ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child:Obx(()=>
         BottomNavigationBarWidget(          
          floatingActionButton: SizedBox(
           height: 55,
           width: 55,
           child: FittedBox(
             child: FloatingActionButton(
               backgroundColor: Colors.black,
               child: const Icon(Icons.add_rounded, size: 40),
               onPressed: () {},
             ),
           ),
         ),
          selectedItemIndex: controller.tabIndex,
          backgroundColor: AppColors.lightGreyColor,      
          onTap: (index) => controller.changeScreen(index),
          selectedItemFontSize: AppTextFonts.detailTextFont,
          unselectedItemFontSize: AppTextFonts.detailTextFont,
          selectedItemColor: AppColors.appAccentColor,
          floatingButtonBorderColor: AppColors.pageBackgroundColor,
          items: [
            BottomNavigationItem(
              unselectedIcon: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: SvgPicture.asset(AppAssets.homeTabIcon, height: 16.h,),
              ),
              selectedIcon: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: SvgPicture.asset(AppAssets.homeTabIcon, height: 16.h,),
              ),
              title: 'Home'    
            ),
            BottomNavigationItem(
              unselectedIcon: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: SvgPicture.asset(AppAssets.historyTabIcon, height: 16.h,),
              ),
              selectedIcon: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: SvgPicture.asset(AppAssets.historyTabIcon, height: 16.h,),
              ),
              title: 'Histórico'    
            ),
            BottomNavigationItem(
              unselectedIcon: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: SvgPicture.asset(AppAssets.pencilTabIcon, height: 16.h,),
              ),
              selectedIcon: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: SvgPicture.asset(AppAssets.pencilTabIcon, height: 16.h,),
              ),
              title: 'Solicitações'    
            ),
            BottomNavigationItem(
              unselectedIcon: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: SvgPicture.asset(AppAssets.historyTabIcon, height: 16.h,),
              ),
              selectedIcon: Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: SvgPicture.asset(AppAssets.exitIcon, height: 16.h,),
              ),
              title: 'Perfil'    
            ),
          ],
          child: Obx(()=>Expanded(child: screenList[controller.tabIndex])) ,
        ),
)      ),
    );
  }
}