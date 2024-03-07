import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/getx_functions/getx_controller/controller.dart';
import 'package:sample_flutter/getx_functions/reactive_state_manager_GetX%20with%20Controller%20Type/controller.dart';

class reactivestatemanagerGetXwithControllerType extends StatelessWidget {
  const reactivestatemanagerGetXwithControllerType({super.key});

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
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
                Get.find<ReactiveStateControllerController>().increment();
              }, 
              child: Text('Click')
            )
          ],
        ),
      ),
    );
  }
}