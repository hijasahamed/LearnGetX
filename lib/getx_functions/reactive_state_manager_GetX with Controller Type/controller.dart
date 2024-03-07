import 'package:get/get.dart';

class ReactiveStateControllerController extends GetxController{
  var count=0.obs;
  void increment(){
    count++;
  }
}