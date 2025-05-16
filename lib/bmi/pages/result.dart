import 'package:bmi/bmi/widgets/custom_button.dart';
import 'package:bmi/core/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String result;
  final double bmi;
  const ResultScreen({super.key, required this.result, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        result,
                        style: TextStyle(
                          fontSize: 30,
                          color:
                              result == 'Normal'
                                  ? Colors.green
                                  : result == 'Overweight'
                                  ? Colors.red
                                  : Colors.yellow,
                        ),
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                      Text(
                        'your body weight is $result, \n ${result == 'Normal' ? 'great job💪' : 'keep it up!'}',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomButton(title: 'Recalculate', onPressed: ()=> Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
