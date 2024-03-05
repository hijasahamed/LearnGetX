import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/getx_functions/getx_bottom_sheet.dart';
import 'package:sample_flutter/getx_functions/getx_controller/getx_controller.dart';
import 'package:sample_flutter/getx_functions/listen_watch/ui_screen.dart';
import 'package:sample_flutter/getx_functions/reactive_state_controller.dart';
import 'package:sample_flutter/getx_functions/reactive_state_manager.dart';

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
      home: UiScreenListenWatch(),
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