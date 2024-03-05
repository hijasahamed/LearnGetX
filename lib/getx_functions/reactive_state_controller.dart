import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveStateController extends StatelessWidget {
  ReactiveStateController({super.key});

  var std=Student();

  // final student=Student(name: 'hijas',age: 24).obs;

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
              'Name is ${std.name.value}'
              // 'Name is ${student.value.name}'
            )),
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
               std.name.value=std.name.value.toUpperCase(); 
              //  student.update((student) {
              //   student?.name=student.name.toString().toUpperCase();
              //  });
              }, 
              child: Text('Click')
            ),
          ],
        ),
      ),
    );
  }
}

class Student{

  var name='Hijas'.obs;
  var age=24.obs;

  // var name;
  // var age;
  // Student({this.name,this.age});

}


