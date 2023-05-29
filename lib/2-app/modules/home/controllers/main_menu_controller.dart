import 'package:check_point/2-app/modules/home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController{
  late RxInt _tabIndex;

  MainMenuController(){
    _tabIndex = 0.obs;    
  }  

  int get tabIndex => _tabIndex.value;

  void changeScreen(int index){
    _tabIndex.value = index;
  }
}