import 'package:flutter/material.dart';
import 'package:rent_portal/colors.dart';

class ReusableButton extends StatelessWidget {
  final String name;
  final VoidCallback onPress;
  const ReusableButton({super.key, required this.name, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: orangeColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: grey),
          ),
        ),
      ),
    );
  }
}
