import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '2-app/modules/home/pages/main_menu_page.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(  
  MaterialApp(
    debugShowCheckedModeBanner: false,
    builder: (ctx, child){
      ScreenUtil.init(ctx);
      return Theme(
        data: ThemeData(),
        child: const MainMenuPage(),
      );
    },
    ));
  }

