import 'package:flutter/material.dart';

import 'package:bmi/core/colors.dart';

class GenderCard extends StatelessWidget {
  final String gender;
  final IconData icon;
  final Function() onTap;
  final Color bgColor;
  const GenderCard({
    super.key,
    required this.gender,
    required this.icon,
    required this.onTap,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 100, color: AppColors.white),
                Text(
                  gender,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
