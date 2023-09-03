
import 'package:get/get.dart';

class BNBController extends GetxController{
  RxInt index = 0.obs;

  void changIndex(int val){
    index.value = val;
    update();
  }
}


