import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sample_flutter/getx_functions/reactive_state_controller.dart';

class MyController extends GetxController{
  var student=Student();
  void convertToUppercase(){
    student.name.value=student.name.value.toUpperCase();
  }
}