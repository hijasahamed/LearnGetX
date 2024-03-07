import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateManager extends StatelessWidget {
  ReactiveStateManager({super.key});

  var  count=0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reactive state manager'),),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Count value is $count'
            )),
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
                count++;
              }, 
              child: Text('Click')
            ),
          ],
        ),
      ),
    );
  }
}


