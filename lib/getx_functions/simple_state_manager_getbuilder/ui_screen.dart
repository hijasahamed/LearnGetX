import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/getx_functions/simple_state_manager_getbuilder/controller.dart';

class SimpleStateManager extends StatelessWidget {
  const SimpleStateManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SimpleStateManager'),),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<SimpleStateController>(
              init: SimpleStateController(),
              builder: (controller){
                return Text('The Value is ${controller.count}');
              }
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){
                Get.find<SimpleStateController>().incrememt();
              }, 
              child: const Text('Click')
            )
          ],
        ),
      ),
    );
  }
}