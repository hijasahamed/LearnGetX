import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXShowdialog extends StatelessWidget {
  const GetXShowdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SHOWDIALOG'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.defaultDialog(
              title: 'Warning Message',
              titleStyle:const TextStyle(fontSize: 20),
              middleText: 'No network found',
              backgroundColor: Colors.red,
              textCancel: 'Cancel',
              textConfirm: 'Confirm',
            );
          }, 
          child:const Text('ShowDiloge')
        ),
      ),
    );
  }
}