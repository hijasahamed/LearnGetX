import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/getx_functions/getx_controller/controller.dart';

class GetxControllerWidget extends StatelessWidget {
   GetxControllerWidget({super.key});

  MyController myController=Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetxControllerWidget'),),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Name is ${myController.student.name}'
            )),
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
               myController.convertToUppercase();
              }, 
              child: const Text('Click')
            ),
          ],
        ),
      ),
    );
  }
}



