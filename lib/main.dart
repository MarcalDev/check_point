import 'package:check_point/2-app/modules/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(  
  MaterialApp(
    debugShowCheckedModeBanner: false,
    builder: (ctx, child){
      ScreenUtil.init(ctx);
      return Theme(
        data: ThemeData(),
        child: HomePage(),
      );
    },
    ));
  }

