import 'package:flutter/material.dart';
import 'package:rent_portal/colors.dart';

class ReusableButton extends StatelessWidget {
  final String name;
  final Color btnColor;
  final Color textClr;
  final VoidCallback onPress;
  const ReusableButton(
      {super.key,
      required this.name,
      required this.onPress,
      this.textClr = grey,
      this.btnColor = lightBlack});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: textClr),
          ),
        ),
      ),
    );
  }
}
