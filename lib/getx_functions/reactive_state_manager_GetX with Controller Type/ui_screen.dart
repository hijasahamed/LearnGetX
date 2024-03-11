import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/getx_functions/reactive_state_manager_GetX%20with%20Controller%20Type/controller.dart';

class reactivestatemanagerGetXwithControllerType extends StatelessWidget {
  reactivestatemanagerGetXwithControllerType({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ReactiveStateController'),),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<ReactiveStateControllerController>(
              init: ReactiveStateControllerController(),
              builder: (controller){
                return Text(
                  'The value is ${controller.count}'
                );
              }
            ),
            const SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
                Get.find<ReactiveStateControllerController>().increment();
              }, 
              child: const Text('Click')
            )
          ],
        ),
      ),
    );
  }
}