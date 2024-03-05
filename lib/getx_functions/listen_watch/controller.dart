import 'package:get/get.dart';

class CounterController extends GetxController{
  final count=0.obs;

  @override
  void onInit() {
    super.onInit();

    count.listen((value) {
      print("Count changed (listen): $value");
    });

    // ever(this, (_) {
    //   print("State of CounterController changed (watch)");
    // });

  }

  void increment(){
    count.value++;
  }
}