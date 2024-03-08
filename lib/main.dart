import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/getx_functions/getx_controller_lifecycle_method/ui_screen.dart'; 


void main() {
  runApp(const MyApp());
}

// non route screen 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetxControllerLifecycleMethod(),
    );
  }
}




// route screen 


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       defaultTransition: Transition.cupertino,
//       initialRoute: '/one',
//       getPages: [
//         GetPage(name: '/one', page: () => const NamedRouteNavigation()),
//         GetPage(name: '/two', page: () => const NamedRouteNavigationScreen2(),transition: Transition.fadeIn ),
//         GetPage(name: '/three/:someValues', page: () => const NamedRouteNavigationScreen3(),)
//       ],
//     );
//   }
// }