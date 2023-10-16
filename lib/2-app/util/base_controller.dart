import 'package:get/get.dart';

class BaseController extends RxController {
  controllerInitializer() {}

  @override
  void onInit() {
    controllerInitializer();
    super.onInit();
  }
}
