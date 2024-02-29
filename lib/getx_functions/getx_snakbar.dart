import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXSnackbar extends StatelessWidget {
  const GetXSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SNACKBAR'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.snackbar(
              'SNACKBAR TITLE', 
              'SNACKBAR MESSAGE',
              snackPosition: SnackPosition.BOTTOM,
              colorText: Colors.red,
              borderColor: Colors.green,
              borderWidth: 4,
              isDismissible: true,
              dismissDirection: DismissDirection.horizontal,
              overlayBlur: 5,
              
            );
          }, 
          child: Text('show snakbar')
        ),
      ),
    );
  }
}