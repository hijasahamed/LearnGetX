import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/getx_functions/getx_controller_lifecycle_method/contoller.dart';

class GetxControllerLifecycleMethod extends StatelessWidget {
  GetxControllerLifecycleMethod({super.key});

  GetxControllerLifecycleMethodController controller =Get.put(GetxControllerLifecycleMethodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetxControllerLifecycleMethod'),),
      body: Center(
        child: Column(
          children: [
            GetBuilder<GetxControllerLifecycleMethodController>(
              initState: (state) => controller.increment(),   
              dispose: (_) => controller.cleanUpTask(),
              // this is one method or else init it in the controller class itself
              builder: (controller){
                return Text(
                  'The Value is ${controller.count}'
                );
              } 
            ),
          ],
        ),
      ),
    );
  }
}