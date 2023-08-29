import 'package:flutter/material.dart';

import '../colors.dart';

class ReusableField extends StatelessWidget {
  final String hint;

  final TextEditingController? ctrl;
  final String? Function(String?)? validator;
  final Widget? fieldIcon;
  final bool hidePass;
  final Widget? suffixIcon;
  const ReusableField(
      {super.key,
      required this.hint,
      this.hidePass = false,
      this.ctrl,
      this.validator,
      this.suffixIcon,
      this.fieldIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: TextFormField(
          controller: ctrl,
          obscureText: hidePass,
          cursorColor: blackColor,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: fieldIcon,
            suffixIcon: suffixIcon,
            hintStyle: const TextStyle(color: highlight, fontSize: 15),
            fillColor: grey,
            filled: true,
            constraints: const BoxConstraints(
                maxHeight: 100, maxWidth: double.infinity, minHeight: 50),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: grey, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: blackColor, width: 2)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: red.shade900, width: 1)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: lightBlack, width: 1)),
          ),
          validator: validator),
    );
  }
}
