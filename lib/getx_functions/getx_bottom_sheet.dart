import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXBottomSheet extends StatelessWidget {
  const GetXBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Sheet'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.bottomSheet(             
              Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text('Light Theme'),
                   onTap: () => Get.changeThemeMode(ThemeMode.dark),
                  ),
                  ListTile(
                    leading: Icon(Icons.nightlight_round_outlined),
                    title: Text('drark Theme'),
                    onTap: () => Get.changeThemeMode(ThemeMode.light),
                  ),
                ],
              ),
              barrierColor: Colors.pink,
              backgroundColor: Colors.orange,
            );
          }, 
          child:const Text('Bottom Sheet')
        ),
      ),
    );
  }

  hashi({String? name}){}
}