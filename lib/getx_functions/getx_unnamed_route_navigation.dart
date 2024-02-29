import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnNamedRouteNavigation extends StatelessWidget {
  const UnNamedRouteNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UnNamedRouteNavigation'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.to(
              Screen2(),
              fullscreenDialog: true,
              transition: Transition.zoom,
              duration: Duration(milliseconds: 2500),
            );           
          }, 
          child: const Text('Go to Next Screen')
        ),
      ),
    );
  }
}


class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 2'),),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [         
            ElevatedButton(
              onPressed: (){
                Get.back();
              }, 
              child: const Text('Back')
            ),
          ],
        ),
      ),
    );
  }
}