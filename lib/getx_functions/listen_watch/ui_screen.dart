import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_flutter/getx_functions/listen_watch/controller.dart';

class UiScreenListenWatch extends StatelessWidget {
  UiScreenListenWatch({super.key});
  
  final CounterController controller=Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'Counter Value: ${controller.count.value}',
                  style: const TextStyle(fontSize: 24),
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}