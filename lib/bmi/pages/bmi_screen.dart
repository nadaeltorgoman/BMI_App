import 'package:bmi/bmi/pages/result.dart';
import 'package:bmi/bmi/widgets/custom_button.dart';
import 'package:bmi/bmi/widgets/custom_container.dart';
import 'package:bmi/bmi/widgets/gender_card.dart';
import 'package:bmi/core/colors.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  String selectedGender = 'Male';
  double height = 180.0;
  int weight = 70;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // male & female
            GenderType(),
            // height
            Height(),
            // weight & age
            WeightAndAge(),
            // calculate button
            CalculateButton(context),
          ],
        ),
      ),
    );
  }

  Expanded GenderType() {
    return Expanded(
      child: Row(
        children: [
          GenderCard(
            icon: Icons.male,
            gender: "Male",
            bgColor:
                selectedGender == "Male"
                    ? AppColors.primaryColor
                    : AppColors.secondaryColor,
            onTap: () {
              setState(() {
                selectedGender = "Male";
              });
            },
          ),
          const SizedBox(width: 10),
          GenderCard(
            icon: Icons.female,
            gender: "Female",
            bgColor:
                selectedGender == "Female"
                    ? AppColors.primaryColor
                    : AppColors.secondaryColor,
            onTap: () {
              setState(() {
                selectedGender = "Female";
              });
            },
          ),
        ],
      ),
    );
  }

  Expanded Height() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Height',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    height.toStringAsFixed(0),
                    style: TextStyle(
                      color: Color.from(alpha: 1, red: 1, green: 1, blue: 1),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'cm',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Slider(
                value: height,
                min: 120.0,
                max: 220.0,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
                activeColor: AppColors.primaryColor,
                inactiveColor: AppColors.accentColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded WeightAndAge() {
    return Expanded(
      child: Row(
        children: [
          CustomContainer(
            titleHeader: "Weight",
            value: weight,
            onTAdd: () {
              setState(() {
                weight++;
              });
            },
            onTMinus: () {
              setState(() {
                weight--;
              });
            },
          ),
          const SizedBox(width: 10),
          CustomContainer(
            titleHeader: "Age",
            value: age,
            onTAdd: () {
              setState(() {
                age++;
              });
            },
            onTMinus: () {
              setState(() {
                age--;
              });
            },
          ),
        ],
      ),
    );
  }

  CustomButton CalculateButton(BuildContext context) {
    return CustomButton(
      title: 'Calculate',
      onPressed: () {
        double bmi = weight / ((height / 100) * (height / 100));
        String result = '';
        if (bmi < 18.5) {
          result = 'Underweight';
        } else if (bmi >= 18.5 && bmi < 24.9) {
          result = 'Normal';
        } else if (bmi >= 25 && bmi < 29.9) {
          result = 'Overweight';
        } else {
          result = 'Obesity';
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(bmi: bmi, result: result),
          ),
        );
      },
    );
  }
}
