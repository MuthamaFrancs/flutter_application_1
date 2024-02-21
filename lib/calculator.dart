import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/calculatorcontoller.dart';
import 'package:flutter_application_1/views/CustomTextField.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/calculator.dart';

class Calculator extends StatelessWidget {
  final TextEditingController num1controller = TextEditingController();
  final TextEditingController num2controller = TextEditingController();
  Calculatorcontroller calculatorcontroller = Get.put(Calculatorcontroller());
  double sum = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 7.0,
            ),
            customTextField(labelText: "1", controller: num1controller),
            const SizedBox(
              height: 7.0,
            ),
            customTextField(labelText: "2", controller: num2controller),
            const SizedBox(
              height: 7.0,
            ),
            // customButton(
            //     btnLabel: "Sum",
            //     btnColor: Colors.amber,
            //     onPressed: () {},
            //     textStyle: const TextStyle(
            //       color: Colors.black,
            //     )),
            ElevatedButton(
                onPressed: () {
                  double a = double.parse(num1controller.text);
                  double b = double.parse(num2controller.text);

                  double s = a + b;
                  calculatorcontroller.updateSum(s);
                },
                child: const Text("Calculate")),
            Obx(() => Text("Sum is: ${calculatorcontroller.sum}")),
          ],
        ),
      ),
    );
  }
}
