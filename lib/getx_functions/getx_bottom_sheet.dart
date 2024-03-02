import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXBottomSheet extends StatelessWidget {
  const GetXBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        backgroundColor: Colors.amberAccent,
        ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.bottomSheet(             
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text('Light Theme'),
                   onTap: () {
                     Get.changeTheme(ThemeData.light());
                      Get.back();
                   },
                  ),
                  ListTile(
                    leading: Icon(Icons.nightlight_round_outlined),
                    title: Text('drark Theme'),
                    onTap: () {
                      Get.changeTheme(ThemeData.dark());
                      Get.back();
                    },               
                  ),
                ],
              ),
              
            );
          }, 
          child:const Text('Bottom Sheet')
        ),
      ),
    );
  }
}