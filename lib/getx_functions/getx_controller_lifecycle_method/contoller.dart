import 'package:get/get.dart';

class GetxControllerLifecycleMethodController extends GetxController{

  var count=0;

  void increment()async{
    await Future.delayed(const Duration(seconds: 3));
    count++;
    update();
  }

  void cleanUpTask(){
    // ignore: avoid_print
    print('Clean up Task');
  }


  // better approach
  // @override
  // void onInit(){
  //   print('Init called');
  //   super.onInit();
  // }

  // @override
  // void onClosed(){
  //   super.onClose();
  // }

}