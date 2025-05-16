import 'package:flutter/material.dart';

import 'package:bmi/core/colors.dart';

class CustomContainer extends StatelessWidget {
  final String titleHeader;
  final int value;
  final Function() onTAdd;
  final Function() onTMinus;
  const CustomContainer({
    super.key,
    required this.titleHeader,
    required this.value,
    required this.onTAdd,
    required this.onTMinus,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titleHeader,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                value.toString(),
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onTMinus,
                    style: IconButton.styleFrom(
                      iconSize: 30,
                      backgroundColor: AppColors.accentColor,
                      shape: const CircleBorder(),
                    ),
                    icon: const Icon(Icons.remove, color: AppColors.white),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: onTAdd,
                    style: IconButton.styleFrom(
                      iconSize: 30,
                      backgroundColor: AppColors.accentColor,
                      shape: const CircleBorder(),
                    ),
                    icon: const Icon(Icons.add, color: AppColors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
