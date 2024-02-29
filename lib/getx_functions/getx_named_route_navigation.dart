import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NamedRouteNavigation extends StatelessWidget {
  const NamedRouteNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NamedRouteNavigation'),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.toNamed('/two');
            // Get.toNamed('/two?channel=ripples code&content=flutter getx'); 
          }, 
          child: const Text('GoTo Named Route Navigation Screen2')
        ),
      ),
    );
  }
}

class NamedRouteNavigationScreen2 extends StatelessWidget {
  const NamedRouteNavigationScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NamedRouteNavigationScreen2'),),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [   
            ElevatedButton(
              onPressed: (){
                Get.toNamed('/three/passedvalue1234');
              }, 
              child: const Text('go to next screen 3 with args')
            ),      
            ElevatedButton(
              onPressed: (){
                Get.back();
              }, 
              child: const Text('Back')
            ),
            // Text('channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}')
          ],
        ),
      ),
    );
  }
}


class NamedRouteNavigationScreen3 extends StatelessWidget {
  const NamedRouteNavigationScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NamedRouteNavigationScreen3'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('${Get.parameters['someValues']}'),            
          ],          
        ),
      ),
    );
  }
}